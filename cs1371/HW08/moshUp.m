function mashUp(song1, song2, instr)
  fhi = fopen(instr);
  fhw = fopen([song1(1:end-4) '_' song2(1:end-4) '_moshUp.txt'], 'w');

function printChar(line)
  if line(1) == '1'
    fhr = fopen(song1);
  else
    fhr = fopen(song2);
  end
  [num2 rest] = strtok(line(3:end), '-');
  lNum = str2num(num2);
  for i = 1:lNum
    songLine = fgetl(fhr);
  end
  if isempty(rest)
    fprintf(fhw, songLine);
  else
    [num3 rest] = strtok(rest, '-');
    for i = 1:str2num(num3)
      [word line] = strtok(songLine, ' ');
    end
    if isempty(rest)
      fprintf(fhw, word);
    else
      fprintf(fhw, word(str2num(rest(2:end))));
    end
  end
  fclose(fhr);
end

  line = fgetl(fhi);
  while ischar(line)
    switch line
      case 'newline'
        fprintf(fhw, '\n');
      case 'space'
        fprintf(fhw, ' ');
      otherwise
        printChar(line);
    end
    line = fgetl(fhi);
  end
  fclose(fhi);
  fclose(fhw);
end
