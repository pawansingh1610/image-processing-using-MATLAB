%% removing noise using median filter 
oimg=imread('cameraman.tif');
nimg = imnoise(oimg,'salt & pepper',0.08);% image with salt and pepper noise about 8%
sz=size(nimg);
%% applying median filter on img
for i=2:sz(1)-1
    for j=2:sz(2)-1
        mat=[nimg(i-1,j-1) nimg(i,j-1) nimg(i+1,j-1);
             nimg(i-1,j)   nimg(i,j)   nimg(i+1,j);
             nimg(i-1,j+1) nimg(i,j+1) nimg(i+1,j+1)];
             newimage(i,j)=median(median(mat));
    end
end
newimage=uint8(newimage);
imshow(nimg);figure();
imshow(newimage)