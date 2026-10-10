import re
KEYWORDS=set("and break do else elseif end false for function if in local nil not or repeat return then true until while".split())
def tokenize(src):
    """yield (kind, text, line). kinds: name, str, num, op, (comments skipped)"""
    i=0;n=len(src);line=1;out=[]
    while i<n:
        c=src[i]
        if c=='\n': line+=1;i+=1;continue
        if c in ' \t\r': i+=1;continue
        if src.startswith('--',i):
            m=re.match(r'--\[(=*)\[',src[i:])
            if m:
                close=']'+m.group(1)+']'; j=src.find(close,i)
                j=n if j<0 else j+len(close); line+=src.count('\n',i,j); i=j
            else:
                j=src.find('\n',i); i=n if j<0 else j
            continue
        m=re.match(r'\[(=*)\[',src[i:])
        if m:
            close=']'+m.group(1)+']'; j=src.find(close,i)
            j=n if j<0 else j+len(close); out.append(('str',src[i:j],line,True)); line+=src.count('\n',i,j); i=j; continue
        if c in '"\'':
            j=i+1
            while j<n and src[j]!=c:
                if src[j]=='\\': j+=1
                if src[j]=='\n': line+=1
                j+=1
            out.append(('str',src[i:j+1],line,False)); i=j+1; continue
        m=re.match(r'[A-Za-z_][A-Za-z_0-9]*',src[i:])
        if m: out.append(('name',m.group(),line,False)); i+=len(m.group()); continue
        m=re.match(r'0[xX][0-9a-fA-F]+|\d+\.?\d*([eE][+-]?\d+)?|\.\d+',src[i:])
        if m: out.append(('num',m.group(),line,False)); i+=len(m.group()); continue
        if src.startswith('...',i): out.append(('op','...',line,False)); i+=3; continue
        if src[i:i+2] in ('==','~=','<=','>=','..'): out.append(('op',src[i:i+2],line,False)); i+=2; continue
        out.append(('op',c,line,False)); i+=1
    return out
def unquote(tok):
    s=tok[1]
    if tok[3]: return s[s.index('[',1)+1:s.rindex(']')].lstrip('\n')
    body=s[1:-1]
    def rep(m):
        e=m.group(1)
        return {'n':'\n','t':'\t','r':'\r','\\':'\\','"':'"',"'":"'",'a':'\a','b':'\b','f':'\f','v':'\v'}.get(e,e)
    body=re.sub(r'\\(\d{1,3})',lambda m:chr(int(m.group(1))),body)
    return re.sub(r'\\(.)',rep,body,flags=re.S)
