function solved = puzzleBox(arr, row, column)
   rowsToShift = row(1:end-1);
   colsToShift = column(1:end-1);
   arr(rowsToShift,:) = arr(rowsToShift, mod((1:end) - 1 - row(end), end) + 1);
   arr(:,colsToShift) = arr(mod((1:end) - 1 - column(end), end) + 1, colsToShift);
   solved = arr;
end
