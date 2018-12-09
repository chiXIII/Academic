import subprocess as sp

def prep(hw_num):

    numstr = str(hw_num)
    if len(numstr) < 2:
        numstr = '0' + numstr
    sp.call(['cp', 'make_test.py', 'HW{}'.format(numstr)])
    sp.call(['cp', 'checkImage.p', 'HW{}'.format(numstr)])
    filename = 'HW{}/hw{}.m'.format(numstr,numstr)

    file = open(filename, 'r')
    text = file.read()
    file.close()
    text = text.replace('<your name>', 'Micaiah Smith-Pierce')
    text = text.replace('<your GT email address>', 'mcsp3@gatech.edu')
    text = text.replace('<homework assignment number/original or resubmission>', 'HW{} original'.format(numstr) )
    text = text.replace('<Your Section>', 'B01')
    text = text.replace('<place here one of the following:\n%                 "I worked on the homework assignment alone, using\n%                  only course materials."\n%                 OR\n%                 "I worked on this homework with <give the names of the\n%                  people you worked with>, used solutions or partial\n%                  solutions provided by <name the people or other\n%                  sources>, and referred to <cite any texts, web sites, or\n%                  other materials not provided as course materials for CS\n%                  1371.>"', 'I worked on the homework assignment alone, using\n%                only course materials.')

    file = open(filename, 'w')
    file.write(text)
    file.close

