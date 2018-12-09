function rec = beMyHero(opList, friends, topList, stats)
   [op1 op2] = strtok(opList, ',');
   op2 = op2(2:end);
   [~, ind] = max(stats(:,2));
   rest = topList;
   for i = 1:ind
      [topMov rest] = strtok(rest, ',');
   end
   if in(topList, op1)
      if in(friends, op1)
         rec = write('1',op1);
      elseif stats(pos(topList,op1), 2) > sum(stats(:,2))/5
         rec = write('2',op1);
      else
         rec = write('2',topMov);
      end
   elseif in(friends, op1)
      if in(friends, op2) & in(friends, op2)
         rec = write('3',op2);
      else
         rec = write('3', op1);
      end
   elseif in([friends ',' topList], op2)
      rec = write('4', op2);
   else
      rec = write('4', topMov);
   end
end

function yn = in(big,small)
   yn = ~isempty(strfind(big,small));
end
function st = write(cond,mov)
   st = sprintf('Based on condition %s, %s would be a great choice!',cond,mov);
end
function ind = pos(list, movie)
   i = strfind(list, movie);
   ind = sum(list(1:i) == ',') + 1;
end
