function zamboni(imgname)
   img = double(imread(imgname));
   [h w ~] = size(img);
   blur = zeros(h-2, w-2, 3);
   for i = 1:3
      for j = 1:3
         blur = blur + img(i:end-3+i, j:end-3+j, :);
      end
   end
   blur = uint8(blur/9);
   imwrite(blur, ['blur_' imgname]);
end
