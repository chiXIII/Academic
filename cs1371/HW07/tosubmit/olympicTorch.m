function validity = olympicTorch(map, directions)
   validity = true;
   [i j] = find(map == '0');
   for move = directions
      switch move
         case 'd'
            i = i + 1;
         case 'u'
            i = i - 1;
         case 'l'
            j = j - 1;
         case 'r'
            j = j + 1;
      end
      spot = map(i,j);
      if any(spot == '#.')
         validity = false;
         break
      end
   end
   if ~(spot == '*')
      validity = false;
   end
end
