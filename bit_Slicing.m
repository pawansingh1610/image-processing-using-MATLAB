itemp= imread('cameraman.tif');   %read the image
[r,c]= size(itemp);         % get the dimensions of image
s = zeros(r,c,8);           % pre allocate a variable to store 8 bit planes of the image
for k = 1:8
    for i = 1:r
        for j = 1:c
            s(i,j,k) = bitget(itemp(i,j),k);    %get kth bit from each pixel 
        end
     end
    
end