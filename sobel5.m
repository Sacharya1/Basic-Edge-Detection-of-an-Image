
img=imread('Sampad.jpg');
img=rgb2gray(img);
[rows,cols]=size(img);
output=img;
% I=zeros(size(img));
Sox=[-5 -4 0 4 5; -8 -10 0 10 8; -10 -20 0 20 10; -8 -10 0 10 8; -5 -4 0 4 5];
Soy=Sox.';
img=double(img);
X=50;
Y=70;
Sx=270;
Sy=300;
t=100;
for r = X:X+Sx-4
    for c=Y:Y+Sy-4
        Gx=sum(sum(Sox.*img(r:r+4,c:c+4)));
        Gy=sum(sum(Soy.*img(r:r+4,c:c+4)));
        
         img(r,c)=sqrt(Gx.^2+Gy.^2);
         M=img(r,c);
       if M>=t
               img(r,c)=255;
       else    img(r,c)=0;
       end
    end
end
output=uint8(img);
figure,imshow(output);title('Edge Image after Sobel Operation');
imwrite(output,'Sobel5.ppm')
   