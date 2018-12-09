file = open('test_script.m', 'w+')
text = 'clear\nclc\n'

fdict = {\
'lemonade':[1,0.1,5,21],\
'cookieCutter':[1,108,170,144],\
'pizzaParty':[2,'30,4','100,50','678,64'],\
'orangePeel':[1,110, 250, 400]\
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
        text += '{} = {}({});\n{} = {}_soln({});\n{}_{} = isequal({},{});\n'.format(mystring,fname,a, cstring,fname,a, fname,str(a).replace('.','').replace('-','').replace(',',''), mystring, cstring)
        #text += 'disp(\'{}\')\ndisp({})\ndisp(\'\')\n'.format(str(a)[0], mystring)

file.write(text)
file.close()
