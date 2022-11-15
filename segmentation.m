close all; 
I=imread('cameraman.tif'); 
I1=imtophat(I,strel('disk',10)); 
figure,imshow(I1);
I2=imadjust(I1);
figure,imshow(I2)
leavel=graythresh(I2);
bw=im2bw(I2,leavel);
figure,imshow(bw);
C=~bw; 
figure,imshow(C); 
D=-bwdist(C); 
D(C)=-inf; 
L=watershed(D);
figure,imshow(L);
Wi=label2rgb(L,'hot','W');
figure,imshow(Wi); 
im=I;
im(L==0)=0;
figure,imshow(im);

