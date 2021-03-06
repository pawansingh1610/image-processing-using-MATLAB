oimg=imread('cameraman.tif');
size_oimg=size(oimg);
mean_kernel=1/9*ones(3);
new_img=zeros(size_oimg);
temp=zeros(3);
%% performing operation
for i=2:size_oimg(1)-1
    for j=2:size_oimg(2)-1
        for k=1:3
            for l=1:3
                temp(k,l)=oimg(i-2+k,j-2+l)*mean_kernel(k,l);
            end
        end
        pixel_value=sum(sum(temp));
        new_img(i,j)=pixel_value;
    end
end
new_img=uint8(new_img);
subplot(2,1,1);
imshow(oimg);
subplot(2,1,2);
imshow(new_img);
