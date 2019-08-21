clear;
pkg load image;
close all;

##Script para realizar operaciones morfologicas en una imagen binarizada

##Se lee la imagen original con la funcio imread
im1=imread('prueba.jpg');
figure(1);subplot(2,2,1); imshow(im1); title('imagen original');

%%se puede definir el nivel de gris para binarizar con la funcion graythresh--> 
nivel = graythresh(im1); %umbral de nivel de gris

##im2bw es la funcion que convierte a una matriz binaria 
##subplot permite mostrarvarias imagenes en un mismo figure
bw = im2bw(im1,nivel);
subplot(2,2,2); imshow(bw); title('imagen binarizada');

##Funcion bwmorph para realizar una operacion morfologica
bw2=bwmorph(bw,'remove');
subplot(2,2,3); imshow(bw2); title('Remover pixeles interiores y dejar el contorno');

##Se obtiene el esqueleto de la imagen
bw3=bwmorph(bw,'skel',Inf);
subplot(2,2,4); imshow(bw3); title('Esqueleto de la imagen');