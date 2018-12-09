function announce = roundRobin(games)

  score1 = str2num(games(:,[1 2]));
  score2 = str2num(games(:,[end-1 end]));
  leftWin = score1 > score2;

  teams1 = games(:,4:6)';
  teams2 = games(:,10:12)';
  teamStr = [teams1(:)' teams2(:)'];

  wins = 0; % every team plays the same number of matches, and wins every match they don't lose,
            % so to determine the winning team it is sufficient to determine the number of wins.
  while ~isempty(teamStr)
    team = teamStr(1:3);
    leftMask = all(games(:,4:6) == team, 2);
    rightMask = all(games(:,10:12) == team, 2);
    w = sum(leftWin(leftMask) == 1)  + sum(leftWin(rightMask) == 0);
    if w > wins
      wins = w;
      losses = sum(leftMask + rightMask) - w;
      winner = team;
    end
    teamStr = teamStr(4:end);
  end
  announce = sprintf('Team %s won the round robin with a record of %d-%d.', winner, wins, losses);
end
