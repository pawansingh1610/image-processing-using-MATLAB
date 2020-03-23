oimg=imread('cameraman.tif');
size_oimg=size(oimg);
mean_kernel=1/9*eye(3);
%% performing operation
for i=2:size_oimg(1)-1
    for j=2:size_oimg(2)-1
        for k=1:3
            for l=1:3
                temp=oimg(i-2+k,j-2+l)*mean_kernel(k,l);
            end
        end
        img(i,j)=temp;
    end
end
new_img=uint8(new_img);
subplot(2,1,1);
imshow(oimg);
subplot(2,1,2);
imshow(new_img);
