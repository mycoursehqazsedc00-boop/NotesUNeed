import sys,re
from lualex import tokenize,unquote
PATFUNCS={'find','gsub','gfind','match','gmatch','strfind','strgfind','strmatch','strgsub'}
def validate(p):
    """port of the structural checks Lua 5.0/5.1 performs lazily at match time"""
    i=0;n=len(p);depth=0;
    if p.startswith('^'): i=1
    while i<n:
        c=p[i]
        if c=='%':
            if i+1>=n: return "malformed pattern (ends with '%')"
            d=p[i+1]
            if d=='b':
                if i+3>=n: return "unbalanced pattern (%b needs 2 chars)"
                i+=4; continue
            if d=='f':
                if i+2>=n or p[i+2]!='[': return "missing '[' after %f"
                i+=2; continue
            if d.isdigit() and d!='0': 
                i+=2; continue
            i+=2; continue
        if c=='(':
            depth+=1; i+=1; continue
        if c==')':
            if depth==0: return "invalid pattern capture (unmatched ')')"
            depth-=1; i+=1; continue
        if c=='[':
            j=i+1
            if j<n and p[j]=='^': j+=1
            first=True
            while True:
                if j>=n: return "malformed pattern (missing ']')"
                if p[j]=='%': j+=2; first=False; continue
                if p[j]==']' and not first: break
                first=False; j+=1
            i=j+1; continue
        i+=1
    if depth>0: return "unfinished capture"
    return None
bad=0
for f in sys.argv[1:]:
    toks=tokenize(open(f,encoding='utf-8',errors='replace').read())
    for k,t in enumerate(toks):
        if t[0]=='name' and t[1] in PATFUNCS and k+1<len(toks) and toks[k+1][1]=='(':
            # collect args at depth 1
            depth=0;args=[[]];j=k+1
            while j<len(toks):
                x=toks[j]
                if x[1]=='(' : depth+=1
                elif x[1]==')':
                    depth-=1
                    if depth==0: break
                if depth==1 and x[1]==',' : args.append([])
                elif not (depth==1 and x[1]=='(' and j==k+1): args[-1].append(x)
                j+=1
            if t[1] in ('gsub','strgsub','find','strfind','gfind','strgfind','match','gmatch','strmatch'):
                # pattern is arg index 1 for string.* and for s:find style (method) it's index 0
                method = k>0 and toks[k-1][1]==':'
                idx = 0 if method else 1
                if len(args)>idx and len(args[idx])==1 and args[idx][0][0]=='str':
                    plain = len(args)>idx+2 and args[idx+2] and args[idx+2][0][1] not in ('nil','false') and t[1] in ('find','strfind')
                    pat=unquote(args[idx][0])
                    SPECIALS='^$*+?.([%-'
                    if t[1] in ('find','strfind') and not any(ch in SPECIALS for ch in pat): plain=True   # Lua treats special-free patterns as plain text
                    if not plain:
                        err=validate(pat)
                        if err: bad+=1; print(f"{f}:{t[2]}: {t[1]}() pattern {pat!r} -> {err}")
print("literal-pattern problems:",bad)
