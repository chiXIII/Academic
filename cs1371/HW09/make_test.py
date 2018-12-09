file = open('test_script.m', 'w+')
text = 'clear\nclc\n'

def make_alphanumeric(st):
    if len(st) <= 0:
        return ''
    elif st[0].isalnum():
        return st[0] + make_alphanumeric(st[1:])
    else:
        return make_alphanumeric(st[1:])

fdict = {\
'shallots' : [1, "{{{{{{{1}}}}}}}", "{true}", "{{'foo'}}"],\
'myCabbages' : [1, "{'foo' 3 2 ; 'bar' 2 3}", "{'Yana' 1000000 42 ; 'Me' 0 0}", "{'a' 1 2 ; 'b' 2 3 ; 'c' 4 5}"],\
'onions' : [2, "[{{{1}}} {{2}} ; {{{{3}}}} {{{4}}}]", "[{{'foo'}} {'bar'} {'bar'} ; {'bar'} {'foo'} {'foo'}]"]\
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
