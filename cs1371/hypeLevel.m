function hypeLevel(filename)
  fh = fopen(filename);
  firstLine = fgets(fh);
  ln = fgetl(fh);
  ln = fgetl(fh);
  h = 0;
  while ischar(ln)
    word = 0;
    rest = 0;
    while ~isempty(word)
      [word rest] = strtok(ln);
      mask = (word >= 'A') & (word <= 'Z');
      if all(mask)
        h = h + 1;
      end
    end
    ln = fgetl(fh);
  end
  fclose(fh);
  
  fhw1 = fopen([filename(1:end-4) '_hype.txt'],'w');
  fprintf(fhw1, ['Song: ' firstLine sprintf('Hype: %d',h)]);
end
