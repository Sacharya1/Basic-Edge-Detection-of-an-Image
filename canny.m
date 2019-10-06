function output=canny(img,X,Y,Sx,Sy,t)
% [rows,cols]=size(img);
output=img;

cannyimg=edge(img(X:X+Sx,Y:Y+Sy),'Canny');


[row1,col1]= size(cannyimg);


cannyimg=uint8(cannyimg);
for i= 1:row1 
     for j=1:col1
         if cannyimg(i,j)==1
             cannyimg(i,j)=255;
         end
     end
end


img(X:X+Sx,Y:Y+Sy)=cannyimg;

output=img;
end
