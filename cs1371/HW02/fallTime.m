function time = fallTime(height)
    time = sqrt(2 .*height ./ 9.8);
    time = round(time,2);
end
