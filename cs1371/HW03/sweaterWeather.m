function shuffled = sweaterWeather(odd, even)
    l = length(odd);
    shuffled = char(ones(1,2.*l));
    shuffled(1:2:2 .*l) = odd;
    shuffled(2:2:end) = even;
end
