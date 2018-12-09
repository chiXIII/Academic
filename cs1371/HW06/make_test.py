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
'boxOfficePower' : [1, "'Robert Downey Jr.,Chadwick Boseman,Nicolas Cage'"],\
'civilWar' : [1, "'Iron Man', 'Captain America'", "'Black Panther', 'Black Widow'", "'Black Panther', 'Iron Man'", "'Captain America', 'Iron Man'"],\
'incredibleUno' : [1, "'foo','r',2,'rb',[1 2]", "'bar','r',2,'rb',[2 2]", "'foobar','r',2,'rb',[1 1]", "'fooobar','r',2,'bb',[1 1]",\
"'Frozone','r',2,'bb',[1 1]"],\
'beMyHero' : [1, "'x,y','a,b,c,d','1,2,3,4,5',[zeros(5,1), (1:5)']", "'x,y','x,b,c,d','1,2,3,4,5',[zeros(5,1), (1:5)']", "'x,y','a,b,c,d','1,2,3,4,x',[zeros(5,1), (1:5)']", "'x,y','a,b,c,y','1,2,3,4,5',[zeros(5,1), (1:5)']", "'x,y','a,b,y,x','1,2,3,4,y',[zeros(5,1), (1:5)']", "'x,y','a,b,c,y','x,2,3,4,5',[zeros(5,1), (1:5)']", "'x,y','x,b,c,y','x,2,3,4,5',[zeros(5,1), (1:5)']"]\
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
