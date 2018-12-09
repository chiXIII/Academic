function heroMask(hFile)
   hIm = imread(hFile);
   red = mean(mean(hIm(:,:,1)));
   green = mean(mean(hIm(:,:,2)));
   if red <= 60
      if green <= 60
         mIm = 'mask2.png';
      else
         mIm = 'mask3.png';
      end
   elseif red <= 100
      if green <= 60
         mIm = 'mask5.png';
      else
         mIm = 'mask1.png';
      end
   else
      mIm = 'mask4.png';
   end
   mIm = imread(mIm);
   mMask = ~all(mIm == cat(3, 0, 255, 0),3);
   mMask = cat(3,mMask, mMask, mMask);
   hIm(mMask) = mIm(mMask);
   imwrite(hIm, [hFile(1:end-4) '_wMask.png']);
end
