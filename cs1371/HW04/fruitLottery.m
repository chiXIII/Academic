function store = rottenFruit(myTicket, winningTicket, investment)
  myTicket = str2num(strrep(myTicket, '-', ' '));
  winningTicket = str2num(strrep(winningTicket, '-', ' '));
  win5 = winningTicket(1:5);
  matches = zeros(1,5);
  matches(1) = any(myTicket(1) == win5);
  matches(2) = any(myTicket(2) == win5);
  matches(3) = any(myTicket(3) == win5);
  matches(4) = any(myTicket(4) == win5);
  matches(5) = any(myTicket(5) == win5);
  winnings = sum(double(matches)) .* 100000;
  winnings = winnings + winnings .* double(myTicket(6) == winningTicket(6));
  store = winnings >= investment;
end
