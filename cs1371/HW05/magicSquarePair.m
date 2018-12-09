function toBluff = magicSquarePair(ar1, ar2)
   toBluff = isMagic(ar1) & isMagic(ar2);
   function gold = isMagic(arr)
      s = size(arr);
      l1 = s(1) == s(2);
      cols = sum(arr);
      comp2 = cols(1);
      l2 = all(cols == comp2);
      rows = sum(arr');
      l3 = all(rows == comp2);
      lin = arr(:);
      d1 = lin(floor(linspace(1,end,s(2))));
      l4 = sum(d1) == comp2;
      arr = arr(:,end:-1:1);
      lin = arr(:);
      d2 = lin(floor(linspace(1,end,s(2))));
      l4 = sum(d2) == comp2;

      elements = arr(:);
      countRight = ones(3,1) * 1:length(elements);
      countDown = (1:length(elements))' * ones(1,length(elements));
      shift = mod(countRight + countDown, length(elements)) + 1;
      shiftedArr = elements(shift);
      equalVals = shiftedArr(1,:) == shiftedArr(2:end,:);
      l5 = ~any(any(equalVals));

      gold = all([l1 l2 l3 l4 l5]);
   end
end
