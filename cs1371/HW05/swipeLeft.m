function swipeRight = swipeLeft(candidates, toSelect)
   [rows, cols] = size(candidates);
   averages = round(sum(candidates, 2)/cols);
   swipeRight = [candidates averages];
   [~, ind] = sort(averages, 'descend');
   ind = ind(1:toSelect);
   swipeRight = swipeRight(ind, :);
end
