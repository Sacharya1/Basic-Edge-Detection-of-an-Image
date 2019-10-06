function output=FNSOBEL(img,X,Y,Sx,Sy,t)
% [rows,cols]=size(img);
output=img;

sobelimg=edge(img(X:X+Sx,Y:Y+Sy),'Sobel');


[row1,col1]= size(sobelimg);


sobelimg=uint8(sobelimg);
for i= 1:row1 
     for j=1:col1
         if sobelimg(i,j)==1
             sobelimg(i,j)=255;
         end
     end
end


img(X:X+Sx,Y:Y+Sy)=sobelimg;

output=img;
end
