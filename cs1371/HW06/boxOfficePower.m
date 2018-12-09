function earnings = boxOfficePower(actors)
   [act1 rest] = strtok(actors, ',');
   [act2 act3] = strtok(rest, ',');
   act3 = act3(2:end);
   earnings = appeal(act1) + appeal(act2) + appeal(act3);
end

function earnings = appeal(actor)
   switch actor
    case 'Gal Gadot'
     earnings = 1900;
    case 'Robert Downey Jr.'
     earnings = 800;
    case 'Chadwick Boseman'
     earnings = 400;
    case 'Chris Hemsworth'
     earnings = 350;
    case 'Scarlett Johansson'
     earnings = 300;
    case 'Jeremy Renner'
     earnings = 150;
    case 'Brandon Routh'
     earnings = 50;
    case 'Ryan Reynolds'
     earnings = 0;
    case 'Nicolas Cage'
     earnings = -200;
   end
end 
