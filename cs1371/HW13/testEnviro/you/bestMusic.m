function strBest = bestMusic(cellVar)
    x = rand(1);
    if x > 0.5
        strBest = cellVar{end};
    else
        strBest = 0;
    end
end