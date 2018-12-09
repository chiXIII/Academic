function musicAwards(filename, category, winner)
  fhr = fopen(filename);
  fhw = fopen([filename(1:end-4) '_updated.txt'], 'w');
  line = fgets(fhr);
  curCat = strtok(line, ':');
  while ~strcmp(curCat, category)
    fprintf(fhw,line);
    line = fgets(fhr);
    curCat = strtok(line, ':');
  end
  fprintf(fhw, [curCat ': ' winner '\n']);
  line = fgets(fhr);
  while ischar(line)
    fprintf(fhw, line);
    line = fgets(fhr);
  end
  fclose(fhr);
  fclose(fhw);
end
