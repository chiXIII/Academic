function numEdible = rottenFruit(inventory)
  edible = inventory >= 2 & inventory <= 7;
  numEdible = sum(sum(edible));
end
