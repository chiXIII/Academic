function change = airContour(warm, cold)
    warmDiff = diff(warm);
    coldDiff = diff(cold);
    warmCont = warmDiff./abs(warmDiff);
    coldCont = coldDiff./abs(coldDiff);

    change = ~min(warmCont == coldCont);

end
