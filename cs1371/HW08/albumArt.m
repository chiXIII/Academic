function albumArt(fileName)
  orderVec = '@%?!*~. ';
  fh = fopen(fileName);
  totalValue = 0;
  numChars = 0;
  line = fgetl(fh);
  while ischar(line)
    for c = line
      totalValue = totalValue + strfind(orderVec, c);
      numChars = numChars + 1;
    end
  line = fgetl(fh);
  end
  fclose(fh);
  avg = totalValue/numChars;
  fhw = fopen([fileName(1:end-4) '_review.txt'], 'w');
  fprintf(fhw, 'Review of %s''s album art:\nThe cover has a darkness score of %0.2f.\n', fileName(1:end-4), avg);
  if avg > 5
    fprintf(fhw,'Very light cover, probably good music for kids!');
  elseif avg > 3
    fprintf(fhw, 'Cover of medium darkness, seems like it could be a bit too edgy...');
  else
    fprintf(fhw, 'Cover is very dark, looks like something quite inappropriate for children.');
  end
  fclose(fhw);
end
