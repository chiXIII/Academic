function crossed = loveSearch(love, search)

   pounds = zeros(1,length(love));
   pounds = char(pounds + '#');

   search = replacer(search);
   search = search';
   search = replacer(search);
   crossed = search';
   
   function replaced = replacer(toReplace)
      s = size(toReplace);
      cols = toReplace(:)';
      cols = strrep(cols, love, pounds);
      cols = cols(end:-1:1);
      cols = strrep(cols, love, pounds);
      cols = cols(end:-1:1);
      replaced = char(reshape(cols, s));
   end
end
