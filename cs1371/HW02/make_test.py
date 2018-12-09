file = open('test_script.m', 'w+')
text = 'clear\nclc\n'

fdict = {\
'fallTime':[1,1,10,20,3,400,97.8732456],\
'cartDist':[1,'0,0,1,0','0,0,0,1','1.23654,5.03254,-1.8945,0','-5,3,-6,-10','100000,0,99933,458765','0.00001,0.000003456,-0.00321,-0.000001123'],\
'timeDilation':[1,'2,0','150,150','123.49876,49.8764567','-25,10000', '456,-4678923', '-200,21902345', '645876,299792457','-20,299792458','0,458'],\
'spaceTime':[1,'0,1,2','7,6e12,9e30','1,3e5,3e30','3.245435,7.6920481003e8,2.01988739e20','1,149.6e9,5.9723e24','5.43,233e9,2.354e24'],\
'clockHands':[2,'0,0,15','0,0,-15','3,43,20','2,5,-2','2,5,-13','4,52,-324','2,0,60','15,63,4','-3,45,12','-3,45,-12','4,-24,13']\
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
