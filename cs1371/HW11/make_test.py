file = open('test_script.m', 'w+')
text = 'clear\nclc\n'
text += 'load NYSE.mat\n'

s = ';'

def make_alphanumeric(st):
    if len(st) <= 0:
        return ''
    elif st[0].isalnum():
        return st[0] + make_alphanumeric(st[1:])
    else:
        return make_alphanumeric(st[1:])

fdict = {\
'stockExchange' : [1, 'stocks1', 'stocks2', 'stocks3'],\
'roots' : [1, "linspace(1,2*pi,20),sin(linspace(1,2*pi,20)),0.1,6", "linspace(-1,1,10), linspace(-1,1,10).^3, -1,1", "[-1,0,1],[1,0,1],-0.8,1"],\
'integrals' : [1, "[[1 2.2 3.3 4.2 5]; ((1:5)).^3], [(1:0.5:5); exp((1:0.5:5))+20]"]\
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
        text += ('{} = {}({})' + s + '\n{} = {}_soln({})' + s + '\n{}_{} = isequal({},{});\n').format(mystring,fname,a, cstring,fname,a, fname,make_alphanumeric(str(a)), mystring, cstring)

        #text += 'disp(\'{}\')\ndisp({})\ndisp(\'\')\n'.format(str(a)[0], mystring)

file.write(text)
file.close()
