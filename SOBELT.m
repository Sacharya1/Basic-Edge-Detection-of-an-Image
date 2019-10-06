
function output=SOBELT(img,X,Y,Sx,Sy,t,th)
 [rows,cols]=size(img);
 img=double(img);

   
for r=X:X+Sx-2
    for c=Y:Y+Sy-2
      
        Gx=((2*img(r+2,c+1)+img(r+2,c)+img(r+2,c+2))-(2*img(r,c+1)+img(r,c)+img(r,c+2)));
    
        Gy=((2*img(r+1,c+2)+img(r,c+2)+img(r+2,c+2))-(2*img(r+1,c)+img(r,c)+img(r+2,c)));
        img(r,c)=sqrt(Gx.^2+Gy.^2);
%          N=(180/3.14)*atan(Gy/Gx);
          M=img(r,c);

        
       if M>=t
               img(r,c)=255;
       else    img(r,c)=0;
       end

    end
end

output=uint8(img);
imwrite(output,'Sobelt.png');
 
       
end
