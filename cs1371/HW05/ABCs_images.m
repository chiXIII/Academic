function [A B C D] = ABCs_images_soln(img1, img2)
% ABCs of Images
%
% This is a multi-part problem. Do each of the parts below.
%
% DO NOT CHANGE THE FUNCTION HEADER (the first line of code)

% a) imread. Read in the image matrix of the file whose name is stored in
% the variable img1. Store the image matrix in a variable named A.
%
% Write your code here:
A = imread(img1); 

% b) Swapping colors. Swap the green and blue layers of A. Store your
% result in B.
%
% Write your code here:
B = A(:,:,[1 3 2]);

% C) Grayscale. Store the grayscale of the image matrix A in the variable
% C. Use the simpler grayscale formula where the pixel value is the average
% of the three layers. Do *NOT* use the weighted average formula or any
% built-in MATLAB functions such as rgb2gray() or gray(). Note: First the
% image matrix will need to by type double, and the final image needs to be
% returned to uint8.
%
% Write your code here (it will be a few lines):
C = double(A);
C = ( C(:,:,1) + C(:,:,2) + C(:,:,3) ) / 3;
C = cat(3,C,C,C);
C = uint8(C);


% d) Negative. Store the negative of the image matrix A in the variable E. 
%
% Write your code here:
D = imcomplement(A);

% e) imwrite. Write a new image that is similar to the image matrix A,
% except that the values should be a third as bright. The name of the new
% image is stored in the variable img2.
%
% Note that the pretest will not check this image.
%
% Write your code here:
imgMat = double(A)/3;
img2 = uint8(imgMat);
end
