file = open('test_script.m', 'w+')
text = 'clear\nclc\nload groups.mat\n'

def make_alphanumeric(st):
    if len(st) <= 0:
        return ''
    elif st[0].isalnum():
        return st[0] + make_alphanumeric(st[1:])
    else:
        return make_alphanumeric(st[1:])

fdict = {\
'luge' : [1, "'name 1-pi-name2-0-name III - 12'", "'name 1 -2-name2 - 3'"],\
'olympicTorch' : [1, "['#####';'#.*.#';'#. .#';'#0 .#';'#####'], 'ruu'", "['#####';'#.*.#';'#. .#';'#0 .#';'#####'], 'rrluu'", "['#####';'#.*.#';'#. .#';'#0 .#';'#####'], 'ruud'"],\
'pascalsPodium' : [1, 1,2,3,4,5,6,7,8,9,100],\
'roundRobin' : [1, "['03 ABC - DEF 02' ; '04 DEF - GHI 00' ; '01 GHI - ABC 12']", 'group1', 'group2', 'group3']\
}

for fname in fdict:
    args = fdict[fname]
    oputs = args.pop(0)
    for a in args:
        mystring, cstring = '', ''
        for n in range(oputs):
            mystring += ' my{}'.format(n) 
            cstring += ' correct{}'.format(n) 
        mystring += ']'
        cstring += ']'
        mystring, cstring = '[' + mystring[1:], '[' + cstring[1:]
        text += '{} = {}({});\n{} = {}_soln({});\n{}_{} = isequal({},{});\n'.format(mystring,fname,a, cstring,fname,a, fname,make_alphanumeric(str(a)), mystring, cstring)

        #text += 'disp(\'{}\')\ndisp({})\ndisp(\'\')\n'.format(str(a)[0], mystring)

file.write(text)
file.close()
