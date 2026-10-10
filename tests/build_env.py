"""Test-only build: make NuN's 1.12-era Lua runnable on Lua 5.3 and turn the XML UI into Lua frame definitions.
usage: build_env.py <addon_dir> <out_dir>"""
import sys,os,re,xml.etree.ElementTree as ET
from lualex import tokenize
addon,out=sys.argv[1],sys.argv[2]
os.makedirs(out,exist_ok=True)

# ---------- Lua compatibility transform (strings: invalid escapes -> char; for-in-table -> __iter)
def fix_lua(src):
    # 1. invalid escapes inside quoted strings
    def fix_str(m):
        s=m.group(0)
        q=s[0]; body=s[1:-1]
        body=re.sub(r'\\(.)',lambda mm: mm.group(0) if mm.group(1) in 'abfnrtv\\"\'0123456789' else mm.group(1),body,flags=re.S)
        return q+body+q
    # tokenizer-aware: only touch real string tokens
    toks=tokenize(src); 
    # rebuild by positions: simpler approach - regex over quoted strings not inside comments (comments rarely contain quotes problems)
    out=[];i=0
    pat=re.compile(r'--\[(=*)\[.*?\]\1\]|--[^\n]*|\[(=*)\[.*?\]\2\]|"(?:\\.|[^"\\\n])*"|\'(?:\\.|[^\'\\\n])*\'',re.S)
    def sub(m):
        t=m.group(0)
        if t.startswith('--') or t.startswith('['): return t
        return fix_str(m)
    src=pat.sub(sub,src)
    # 2. for a,b in EXPR do  ->  for a,b in __iter(EXPR) do   (skip if EXPR already a call/ipairs/pairs/next)
    def forin(m):
        vars_,expr=m.group(1),m.group(2).strip()
        if re.match(r'^(ipairs|pairs|next|__iter|string\.gfind|gfind|strgfind)\b',expr) or expr.startswith('ipairs') : return m.group(0)
        return f'for {vars_} in __iter({expr}) do'
    src=re.sub(r'for\s+([A-Za-z_]\w*(?:\s*,\s*[A-Za-z_]\w*)?)\s+in\s+(.+?)\s+do\b',forin,src)
    return src
for f in os.listdir(addon):
    if f.endswith('.lua'):
        s=open(os.path.join(addon,f),encoding='utf-8',errors='replace').read()
        open(os.path.join(out,f),'w').write(fix_lua(s))

# ---------- XML -> Lua frame definitions
tree=ET.parse(os.path.join(addon,'NotesUNeed.xml'))
def strip(tag): return tag.split('}')[-1]
root=tree.getroot()
templates={}
FRAMETYPES={'Frame','Button','CheckButton','EditBox','ScrollFrame','Slider','GameTooltip','StatusBar','MessageFrame','ScrollingMessageFrame'}
def collect_templates(e):
    for c in e:
        t=strip(c.tag)
        if t in FRAMETYPES and c.get('virtual')=='true' and c.get('name'): templates[c.get('name')]=c
        collect_templates(c)
collect_templates(root)
nodes=[]       # creation order list of dicts
def luaq(s): return '[=====[' + s + ']=====]'
def make(e,parentName,kind,override_name=None,inherited_from=None):
    t=strip(e.tag)
    name=override_name or e.get('name')
    if name and '$parent' in name: name=name.replace('$parent',parentName or '')
    node={'type':t,'name':name,'parent':e.get('parent') or parentName,'id':e.get('id'),'hidden':e.get('hidden')=='true','scripts':{},'kind':kind}
    nodes.append(node)
    def scan_children(src,thisName):
        for c in src:
            ct=strip(c.tag)
            if ct=='Scripts':
                for sc in c:
                    n=strip(sc.tag)
                    body=(sc.text or '').strip()
                    if sc.get('function'): body=sc.get('function')+'();'
                    if n not in node['scripts']: node['scripts'][n]=body
            elif ct=='Layers':
                for layer in c:
                    for el in layer:
                        et=strip(el.tag)
                        if et in('FontString','Texture'):
                            make(el,thisName,'region')
            elif ct in ('ButtonText','NormalText','HighlightText','DisabledText','NormalTexture','PushedTexture','HighlightTexture','DisabledTexture','ThumbTexture','CheckedTexture','DisabledCheckedTexture'):
                if c.get('name'): make(c,thisName,'region')
            elif ct=='Frames':
                for fr in c:
                    if strip(fr.tag) in FRAMETYPES: make(fr,thisName,'frame')
            elif ct=='ScrollChild':
                for fr in c:
                    if strip(fr.tag) in FRAMETYPES: make(fr,thisName,'frame')
    # own children first (they override), then inherited template content
    scan_children(e,name)
    inh=e.get('inherits')
    if inh:
        for tn in inh.split(','):
            tn=tn.strip()
            if tn in templates: 
                tpl=templates[tn]
                scan_children(tpl,name)
                if tpl.get('inherits'):
                    for tn2 in tpl.get('inherits').split(','):
                        if tn2.strip() in templates: scan_children(templates[tn2.strip()],name)
    return node
def walk(e):
    for c in e:
        t=strip(c.tag)
        if t in FRAMETYPES and c.get('virtual')!='true' and c.get('name'):
            make(c,None,'frame')
        elif t in FRAMETYPES and c.get('virtual')!='true':
            make(c,None,'frame')
walk(root)
# emit
lines=['return {']
for n in nodes:
    sc=','.join(f'{k}={luaq(v)}' for k,v in n['scripts'].items())
    lines.append('{type=%s,name=%s,parent=%s,id=%s,hidden=%s,kind=%s,scripts={%s}},'%(
        luaq(n['type']), luaq(n['name']) if n['name'] else 'nil', luaq(n['parent']) if n['parent'] else 'nil',
        n['id'] if n['id'] else 'nil', 'true' if n['hidden'] else 'false', luaq(n['kind']), sc))
lines.append('}')
open(os.path.join(out,'xmlframes.lua'),'w').write('\n'.join(lines))
print("frames/regions generated:",len(nodes),"| templates:",len(templates),"| scripts:",sum(len(n['scripts']) for n in nodes))
