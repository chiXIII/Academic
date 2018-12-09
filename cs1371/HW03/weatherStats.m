function announcement = weatherStats(values, description)
    high = max(values);
    average = round(mean(values),0);
    script = 'Today''s weather was %s, with a high temperature of %s degrees and an average temperature of %s degrees.';
    announcement = sprintf(script, lower(description), num2str(high), num2str(average));
end
