function [portion, leftover] = pizzaParty(attendees, pizzas)
    slices = pizzas .*8;
    portion = floor(slices ./ attendees);
    leftover = mod(slices, attendees);
end
