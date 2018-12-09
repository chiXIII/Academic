function outcome = civilWar(hero1, hero2)
   lastLets = ['reawn']; % the (unique!) last letters of the names in victory order
   num1 = find(lastLets == hero1(end));
   num2 = find(lastLets == hero2(end));
   crit = floor(length(lastLets)/2);
   diff = mod(num2 - num1, 5);
   if diff == 0
      outcome = 'It''s a tie!';
   elseif (diff >= 1) & (diff <= crit)
      outcome = 'Player 1 wins!';
   else
      outcome = 'Player 2 wins!';
end
