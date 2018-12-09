function turn = incredibleUno(player, topColor, topValue, handColor, handValue)
   num2play = sum(handValue == topValue);
   if num2play > 0
      if num2play > 1
         s = 's';
      else
         s = '';
      end
      turn = sprintf('%s played %s #%s card%s.',player, num2str(num2play), num2str(topValue), s);
   elseif any(handColor == topColor)
      colors = ['red   '; 'blue  '; 'yellow'; 'green '];
      cMask = any(topColor == colors(:,1), 2);
      color = colors(cMask, :);
      color(color == ' ') = [];
      turn = sprintf('%s played 1 %s card.',player,color);
   elseif player == 'Frozone'
      turn = 'Where''s my super suit?!';
   else
      turn = sprintf('%s had to draw a card...', player);
   end
end
