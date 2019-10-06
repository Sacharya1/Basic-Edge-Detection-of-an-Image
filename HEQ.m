function output=HEQ(img,X,Y,Sx,Sy,t,th)
% [rows,cols]=size(img);
output=img;

histeqimg=histeq(img(X:X+Sx,Y:Y+Sy));


[row1,col1]= size(histeqimg);


histeqimg=uint8(histeqimg);
for i= 1:row1 
     for j=1:col1
         if histeqimg(i,j)==1
             histeqimg(i,j)=255;
         end
     end
end


img(X:X+Sx,Y:Y+Sy)=histeqimg;

output=img;
end
