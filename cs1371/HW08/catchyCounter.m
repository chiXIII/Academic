function number = catchyCounter(file, lyric)
  lyric = lower(lyric);
  fh = fopen(file);
  number = 0;
  line = fgetl(fh); 
  while ischar(line)
    number = number + length(strfind(lower(line), lyric));
    line = fgetl(fh);
  end
  fclose(fh);
end
