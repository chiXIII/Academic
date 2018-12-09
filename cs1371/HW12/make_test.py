file = open('test_script.m', 'w+')
text = 'clear\nclc\n'
text += 'load groves.mat\n'
text += 'load runescape_test.mat\n'

s = ';'

def make_alphanumeric(st):
    if len(st) <= 0:
        return ''
    elif st[0].isalnum():
        return st[0] + make_alphanumeric(st[1:])
    else:
        return make_alphanumeric(st[1:])

fdict = {\
'sumtorial' : [1, 1, 3, 100, 24, 0, 2, 5, 43, 0],\
'palingrove' : [1, 'grove1', 'grove2', 'grove3'],\
'treeFarm' : [1, "1, 'a'", "42, '^'", "3,','", "457, 'x'"],\
'deepestPath' : [1, "{'a'}", "{{1}}", "{1 {2}}", "{2 {}}", "{{1}, {'a', {1}}}"],\
'runeScape' : [1, "charStruct1, itemStruct1","charStruct2, itemStruct2","charStruct3, itemStruct3","charStruct4, itemStruct4"],\
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
