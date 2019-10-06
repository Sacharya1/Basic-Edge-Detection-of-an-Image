*** INSTALATION ***

Sampad Acharya

On Matlab

Open Matlab and run the script main.m

*** FUNCTIONS ***


1. CANNY: canny
2.SOBEL_Function(Sobel built-ins):FNSOBEL
3.Sobel: SOBEL (For sober handwritten code)
4.Sobelt(Sobel with amplitude thresholding): SOBELT
5. Sobelth (Sobel with direction thresholding): SOBELTH
6.Edge_color(Canny Edge detection for Color image): edgec
7.Histogram_Eq(Histogram Equalization): HEQ

8.For Sobel 5*5 mask, please access ‘Sobel_NoT.m’,‘sobel5.m’ and’Sobelth5.m’ file. 


The functions directly can be called using one main file. If one wishes to read all the parameters values from a file here is the Parameter file. 

*** PARAMETERS FILE ***

There are for parameters:
1. the input file name;
2. the output file name;
3. Operation name: the name of the filter. Use CANNY, CANNY1, CANNY2 for canny operation; SOBEL_Function,SOBEL_Function1, SOBEL_Function2 for sobel builtins; Sobelt, Sobelt1, Sobelt2 for Sobel with amplitude thresholding; Sobelth, Sobelth1, Sobelth2 for Sobel with direction thresholding; Edge_color, Edge_color1, Edge_color2 for Canny Edge detection for Color image; Histogram_Eq, Histogram_Eq1, Histogram_Eq2 for Histogram Equalization.


Output:

. CANNY: baboon_cn2.pgm
2.SOBEL_Function(Sobel built-ins):baboon_sf2.pgm
3.Sobel: baboon_sobel2.pgm (For sober handwritten code)
4.Sobelt(Sobel with amplitude thresholding): baboon_sobelt2.pgm
5. Sobelth (Sobel with direction thresholding): baboon_sobelth2.pgm
6.Edge_color(Canny Edge detection for Color image): lena_edgec2.ppm
7.Histogram_Eq(Histogram Equalization): baboob_heq2.pgm

8.For Sobel 5*5 mask, please access ‘Sobel_NoT.m’,‘sobel5.m’ and’Sobelth5.m’ file and output is : ‘Sobel_NoT5.ppm’, ‘Sobel5.ppm’, ‘Sobelth5.ppm’ .