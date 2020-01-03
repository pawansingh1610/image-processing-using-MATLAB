oimg=imread('cameraman.tif');
sz=size(oimg);
nrow=input('enter new row size');
ncol=input('enter new coloumn size');
rowratio=nrow/sz(1);
colratio=ncol/sz(2);
IR=ceil([(1:sz(1)*rowratio)]./rowratio);
CR=ceil([(1:sz(2)*colratio)]./colratio);
nimg=oimg(:,IR);
nimg=nimg(CR,:);
imshow(nimg)
