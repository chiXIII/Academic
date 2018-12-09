function pasArr = pascalPodium(rows)
   pasArr = zeros(rows, 2*rows-1);
   pasArr(1,rows) = 1;
   for i = 2:rows
      for j = 2:2*rows-2
         pasArr(i,j) = pasArr(i-1,j-1) + pasArr(i-1,j+1);
      end
   end
   if rows > 1
      pasArr(rows,1) = pasArr(rows-1,2);
      pasArr(rows,end) = pasArr(rows-1,end-1);
   end
end
