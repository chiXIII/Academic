file = open('test_script.m', 'w+')
text = 'clear\nclc\n'

def make_alphanumeric(st):
    if len(st) <= 0:
        return ''
    elif st[0].isalnum():
        return st[0] + make_alphanumeric(st[1:])
    else:
        return make_alphanumeric(st[1:])
def p(arg):
    pring(arg)
    return arg

fdict = {\
'swipeLeft' : [1, '[1 4 2; 5 6 3; -1 3 20], 2', '[4 9; 0.001 -3.28], 1', '[-50; 20 ; 0.23; pi; 32; 94], 4',\
'[2; 4; 3], 3', '7, 1', '[12 98; 13 1], 0'],\
'loveSearch' : [1, "'abc', ['abc';'def';'ghi']", "'cba', ['abc';'def';'ghi']", "'adg', ['abc';'def';'ghi']"],\
'magicSquarePair' : [1, 'magic(5),magic(5)', 'magic(3),magic(7)', 'magic(3), ones(2)', 'magic(4) + 1, [1 5; 7 8]', 'magic(2), magic(2) + 1'],\
'puzzleBox' : [1, "['foo';'bar'], [1 2 4], [2 -10]", "['asdf';'ghjk';'kl;z';'xcvb'], [2 -2], [3 4 -6]","[2 3 10; 0 9 3], [5], [2 970]"]\
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
