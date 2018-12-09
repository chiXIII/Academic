function [rHours rMinutes] = clockHands(cHours, cMinutes, elapsed)
    pastHour = cMinutes + elapsed;
    rMinutes = mod(pastHour, 60);
    rHours = cHours + floor(pastHour./60);
    rHours = mod(rHours, 12);
end
