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
'weatherStats': [1,'[1,4,2,56,32,0],\'NASTY\'', '[2,-5,10,10,2],\'bLue\'', '[0.236432, 3, -0.00072], \'FAN-DIDDLY-TASIC!\'', '[10000000],\
 \'DAIKIRAI\''],\
'sweaterWeather': [1, '\'foo\', \'bar\'', '\'Neon\', \'Nova\'', '\'!@#$%^&*(\', \'123456789\'', '\'A\', \' \'', '\'111\', \'\'\'22\''],\
'airContour': [1, '[1 2 3 4], [2 3 4 5]', '[3,2,3,4], [3 2 1 2]', '[-5 3 -1 0 3 4 7 8], [3 5 4 2 3 5 6 -100000]', '[linspace(1,10,13) linspace(42, 13, 7)], [linspace(1000, -10, 13), 9999:-1:9993]' ],\
'forecast': [1, '\'Everything is certain\', \'Everything\', \'Nothing\'', '\'Socialism is evil\', \'Socialism\', \'Captialism\'', '\'foo\', \'o\', \'0\'', '\'Don\'\'t you think ignorance is bliss?\', \'ignorance is bliss\', \'bliss is ignorance\''],\
'coldWar': [1, '\'douglas\', 2, 0', '\'ibm\', -1, -1', '\'pietrysycamolaviadelrechiotemexity\', 54, -22']\
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

#        .replace('.','').replace('-','').replace(',','').replace('[','').replace(']','').replace('\'','').replace(' ','').replace('!','')\
        

        #text += 'disp(\'{}\')\ndisp({})\ndisp(\'\')\n'.format(str(a)[0], mystring)

file.write(text)
file.close()
