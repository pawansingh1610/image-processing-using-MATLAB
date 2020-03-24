oimg=imread('cameraman.tif');
size_oimg=size(oimg);
kernel=ones(3);
temp=zeros(3)
img=zeros(size_oimg);
for i=2:size_oimg(1)-1
    for j=2:size_oimg(2)-1
        for k=1:3
            for l=1:3
                temp(k,l)=oimg(i-2+k,j-2+l)*kernel(k,l);
            end
        end
        temp=reshape(temp,[1,9]);
        temp=sort(temp);
        temp=temp(2:8);
        temp=(sum(temp))/7;
        img(i,j)=temp;
        temp=zeros(3);
    end
end
img=uint8(img);
subplot(2,1,1);
imshow(oimg);
subplot(2,1,2);
imshow(img);
