function mashUp(song1, song2, instr)
  fhi = fopen(instr);
  fhw = fopen([song1(1:end-4) '_' song2(1:end-4) '_mashUp.txt'], 'w');

function printLine(line, lose)
  if line(1) == '1'
    fhr = fopen(song1);
  else
    fhr = fopen(song2);
  end
  lNum = str2num(line(3:end));
  for i = 1:lNum-1
    line = fgetl(fhr);
  end
  if lose
    fprintf(fhw, fgetl(fhr));
  else
    fprintf(fhw, fgets(fhr));
  end
  fclose(fhr);
end

  curLin = fgetl(fhi);
  nexLin = fgetl(fhi);
  while ischar(nexLin)
    printLine(curLin, false);
    curLin = nexLin;
    nexLin = fgetl(fhi);
  end
  printLine(curLin, true);
  fclose(fhi);
  fclose(fhw);
end

