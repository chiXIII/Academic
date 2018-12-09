function winner = luge(results)
   min = 'not a time';
   winName = '';
   rest = results;
   while ~isempty(rest)
      [name rest] = strtok(rest, '-');
      [time rest] = strtok(rest, '-');
      time = str2num(time);
      if (time < min) | (min== 'not a time')
         min = time;
         winName = name;
      end
   end
   winner = sprintf('%s is the winner of the 2018 Olympics for luge, with a time of %0.2f seconds!', winName, min);
end
