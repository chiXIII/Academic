function eYears = spaceTime(pYears, sMajor, mass)
    seconds = 2 .*pi.*sqrt(sMajor.^3 ./(6.674e-11 .*(mass + 1.989e30)) );
    eSeconds = 60 .*60 .*24 .*365;
    eYears = round(pYears .* eSeconds ./ seconds, 3);
end
