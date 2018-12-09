function beMemeValentine(main, back)
   m = imread(main);
   b = imread(back);
   s = size(m);
   b = imresize(b, s([1 2]));

   backColor = m(1,1,:);
   notBack = m ~= backColor;
   d2 = notBack(:,:,1) | notBack(:,:,2) | notBack(:,:,3);
   d3 = cat(3,d2,d2,d2);

   meme = b;
   meme(d3) = m(d3);
   imwrite(meme, [main(1:end-4) '_Meme.png']);
end
