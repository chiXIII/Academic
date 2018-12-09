file = open('test_script.m', 'w+')
text = 'clear\nclc\n'
text += 'load birdNest_test.mat\nload schrodinger_test.mat\nload warriorClans\n'

s = ';'

def make_alphanumeric(st):
    if len(st) <= 0:
        return ''
    elif st[0].isalnum():
        return st[0] + make_alphanumeric(st[1:])
    else:
        return make_alphanumeric(st[1:])

fdict = {\
'tomAndJerry' : [1, "struct('foo', 'bar'), struct(), 'foo'", "struct('a', 1, 'b', 'x', 'c', 2, 'dd', 0), struct('a', 5, 'b', pi), 'c'"],\
'garfield' : [1, "struct('a', 1, 'b', 'a')", "struct('a', 'monday', 'b', 'a')", "struct('a', {1 true NaN ; 'a' 'b' 'c'}, 'b', {1 'monday', 'Monday'; 2, 'MONDAY', 'mondAy'})"],\
'birdNest' : [1, 'rooms1', 'rooms2', 'rooms3', 'rooms4'],\
'schrodingersCat' : [1, "arr1, start1", "arr2, start2", "arr3, start3"],\
'warriors' : [2, "clans1, 'Agility'", "clans2, 'Courage'", "clans3, 'Coolness'"]\
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
