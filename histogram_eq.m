oimg=imread('cameraman.tif');
number_of_values=zeros(1,256);
len_oimg=size(oimg);
for i=1:len_oimg(1)
    for j=1:len_oimg(2)
        number_of_values(1,oimg(i,j))=number_of_values(1,oimg(i,j))+1;
    end
end
total_pixel=sum(number_of_values);
DF_number_of_values=number_of_values/total_pixel;
CDF_number_of_values=zeros(1,256);
for i=1:256
    if (i==1)
        CDF_number_of_values(i)= DF_number_of_values(i);
    else
        CDF_number_of_values(i)=CDF_number_of_values(i-1)+ DF_number_of_values(i);

    end
end
new_CDF_number_of_values=round(CDF_number_of_values*255);
new_img=zeros(len_oimg(1),len_oimg(2));
for i=1:len_oimg(1)
    for j=1:len_oimg(2)
        temp=oimg(i,j);
        new_img(i,j)=new_CDF_number_of_values(1,temp);
    end
end
new_img=uint8(new_img);
subplot(2,1,1);
imshow(oimg);
subplot(2,1,2);
imshow(new_img);


