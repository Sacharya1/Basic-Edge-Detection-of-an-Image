function output=edgec(img,X,Y,Sx,Sy)
[rows,cols]=size(img);
output=img;


if X<=0 and X>=rows
    error('Change the value X');
elseif X+Sx>=rows
    error('Change the value of Sx');
elseif Y<=0 and Y>=cols
    error('Change the value of Y');
elseif Y+Sy>=cols
    error('Change the value of Sy');
end
   for r=X:X+Sx
      for c=Y:Y+Sy
        Red= img(r,c,1);
        
        Green= img(r,c,2); 
        
        Blue= img(r,c,3);
       

        L=(0.2989*Red) + (0.5870*Green) + (0.1140*Blue) ;

        output(r,c,1)=L;
           output(r,c,2)=L;
           output(r,c,3)=L;
           

       end
    end
output=uint8(output);

cannyimg=edge(output(X:X+Sx,Y:Y+Sy),'Canny');


[row1,col1]= size(cannyimg);


cannyimg=uint8(cannyimg);
for i= 1:row1 
     for j=1:col1
         if cannyimg(i,j)==1
             cannyimg(i,j)=255;
         end
     end
end


output(X:X+Sx,Y:Y+Sy)=cannyimg;


output=output;

end