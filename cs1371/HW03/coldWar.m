function message = coldWar(encrypted, odd, even)
    message = encrypted;
    message(1:2:end) = char( mod(message(1:2:end)+odd-mod('a',26), 26) +97);
    message(2:2:end) = char( mod(message(2:2:end)+even-mod('a',26), 26) +97 );
end
