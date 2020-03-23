oimg=imread('cameraman.tif');
number_of_values=zeros(1,256);
sz=size(oimg);
local_kernel=zeros(3,3);
new_img=zeros(sz(1),sz(2));
%% 3*3 local histogram
for i=2:sz(1)-1
    for j=2:sz(2)-1
        for k=1:3
            for l=1:3
                local_Hist(k,l)=oimg(i-2+k,j-2+l)+local_kernel(k,l);
            end
        end
        number_of_values=zeros(1,256);
        for m=1:3
            for n=1:3
                number_of_values(1,local_Hist(m,n))=number_of_values(1,local_Hist(m,n))+1;
            end
        end
        total_pixel=9;
        DF_number_of_values=number_of_values/total_pixel;
        CDF_number_of_values=zeros(1,255);
        for p=1:255
            if (p==1)
                CDF_number_of_values(p)= DF_number_of_values(p);
            else
                CDF_number_of_values(p)=CDF_number_of_values(p-1)+ DF_number_of_values(p);
            end
        end
        new_CDF_number_of_values=round(CDF_number_of_values*255);
        Dn_value=oimg(i,j);
        new_img(i,j)=new_CDF_number_of_values(1,Dn_value);
    end
end
new_img=uint8(new_img);
subplot(2,1,1);
imshow(oimg);
subplot(2,1,2);
imshow(new_img);
