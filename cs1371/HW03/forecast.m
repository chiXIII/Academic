function innocence = forecast(reality, filter, ignorance)
    ind = strfind(reality, filter);
    innocence = [reality(1:ind-1) ignorance reality(ind+ length(filter):end)];
end
