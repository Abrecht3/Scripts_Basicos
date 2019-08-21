##se limpia la consola, se carga el paquete image para usar sus funciones
## y finalmente se cierran todas las que pudieran seguir abiertas
clear;
pkg load image;
close all;

%%Script para convertir una imagen a su forma binaria 
##y guardar como un nuevo archivo

##Se lee la imagen original con la funcio imread
im1=imread('37895380_316469305763589_2637650033356308480_n.jpg');

##im2bw es la funcion que convierte a una matriz binaria 
BW = im2bw(im1);

##se guarda en un nuevo archivo con imwrite 
imwrite(BW, 'final_b.jpg');
 
##Se muestra la imagen en una ventana con imshow
##figure permite abrir varias ventanas 
figure 1, imshow(im1);
figure 2, imshow(BW);