function [gal pin cup] = lemonade(qua)
    gal = round(qua./4, 2);
    pin = round(qua.*2, 2);
    cup = round(qua.*4, 2);
end
