%% sobel filter or edge detector
oimg=imread('cameraman.tif');% original image
oimg=double(oimg);
sz=size(oimg);
%% kernel horizontal and vertical
horz=[0 0 0;0 0 1;0 -1 0];
ver=[0 0 0;0 1 0;0 0 -1];
H=0;V=0;
%% performing operation
for i=2:sz(1)-1
    for j=2:sz(2)-1
        for k=1:3
            for l=1:3
                H=H+oimg(i-2+k,j-2+l)*horz(k,l);
                V=V+oimg(i-2+k,j-2+l)*ver(k,l);
            end
        end
        img(i,j)=sqrt((H^2)+(V^2));
        H=0;V=0;
    end
end
subplot(2,1,1)
imshow(uint8(oimg));
subplot(2,1,2);imshow(uint8(img));

