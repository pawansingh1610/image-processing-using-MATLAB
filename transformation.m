% image transformation

%% original image
%stored in a variable name oimg
imread('cameraman.tif');
oimg=double(ans);
imshow(oimg);title('original image');figure(1)
suptitle('image transformation')

%% performing negative transformation
negimg=255-ans;
imshow(negimg);title('negative transformation');figure(2)

%% logarithmic transformation
logimg1= 2.*log(oimg+1);
logimg2= 5.*log(oimg+1);
imshow(uint8(logimg1));title('logarithmic transformation with constant value 20');figure(3);
imshow(uint8(logimg2));title('logarithmic transformation with constant value 50');figure(4);
%% power transformation
powimg1=(oimg.^1.1);
imshow(uint8(powimg1));title('power transformation with gamma value 1.1');figure(5)
powimg2=(oimg.^1.3);
imshow(uint8(powimg2));title('power transformation with gamma value 1.3');figure(6)
powimg3=(oimg.^0.7);
imshow(uint8(powimg3));title('power transformation with gamma value 0.7');