function fourEverAlone(file)
   img = imread(file);
   img1 = uint8(255 - img);
   d2 = uint8(sum(img, 3)/3);
   img2 = cat(3,d2,d2,d2);
   img3 = img(:,end:-1:1,:);
   img4 = img(:,:,[1 3 2]);
   final = [img1 img3; img2 img4];
   imwrite(final, [file(1:end-4) '_Alone.png'])
end
