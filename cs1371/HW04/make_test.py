file = open('test_script.m', 'w+')
text = 'clear\nclc\nload(\'encrypt.mat\');\n'

def make_alphanumeric(st):
    if len(st) <= 0:
        return ''
    elif st[0].isalnum():
        return st[0] + make_alphanumeric(st[1:])
    else:
        return make_alphanumeric(st[1:])

fdict = {\
'rottenFruit': [1, '[3 4 5]', '[0,1,1]', '[-1 -2]', '[1 2 3 4 5 6 7 8]', '[1.2, 1.5, 2.2, 2.5, 3.2, 3.5, 6.2, 6.5, 7.2, 7.5, 8.2, 8.5]'],\
'fruitLottery': [1, '\'1-2-3-4-5-6\', \'1-2-3-4-5-7\', 550000', '\'1 2 3 4 5 6\', \'1 2 3 4 5 7\', 200000', '\'1 2 3 4 5 6\', \'1 2 3 4 5 7\', 300000', '\'1 2 3 4 5 6\', \'1 2 3 4 5 6\', 150000', '\'1 1 1 1 1 1\', \'2 2 2 2 2 2\', 700000', '\'-1 2 3 4 5 6\', \'-2 3 4 5 4 6\', 200000', '\'2.3 1 1 1 1 1\', \'2.4 1 2 1 1 1\', 300000', '\'1 2 3 4 5 6\', \'1-2-3-4-5-6\', 150000', '\'1 2 33 44 555 6666\', \'1 2 33 444 55 6666\', 750000'],\
'fruitDecryption': [1, '\'$$FFxh,-HH,ruikttl]]x..xh\'', '\'sh$ck#@kHHl.eHde\'', '\'GGGGGGGGGGGGHHHHHhhhhhhhhA\''],\
'fruitEncryption':[1, '[\'Forever\';\'Twelve!\']', '[\'fLnld#$nkd\';\'slhdofkcnf\']'],\
'fruitThief': [1, '[true true], [true false], [true true], [true true]', '[true false false], [true false true], [true false true], [true false true]', '[false false false], [false false false], [true true true], [false false false]']\
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
        text += '{} = {}({});\n{} = {}_soln({});\n{}_{} = isequal({},{});\n'.format(mystring,fname,a, cstring,fname,a, fname,make_alphanumeric(str(a)).replace('true','t').replace('false','f'), mystring, cstring)

        #text += 'disp(\'{}\')\ndisp({})\ndisp(\'\')\n'.format(str(a)[0], mystring)

file.write(text)
file.close()
