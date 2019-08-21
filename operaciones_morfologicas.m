clear;
pkg load image;
close all;

##Script para realizar operaciones morfologicas en una imagen binarizada

##Se lee la imagen original con la funcio imread
im1=imread('prueba.jpg');
figure(1);subplot(2,4,1); imshow(im1); title('imagen original');

%%se puede definir el nivel de gris para binarizar con la funcion graythresh--> 
nivel = graythresh(im1); %umbral de nivel de gris

##im2bw es la funcion que convierte a una matriz binaria 
##subplot permite mostrarvarias imagenes en un mismo figure
bw2 = im2bw(im1,nivel);
subplot(2,4,2); imshow(bw2); title('imagen binarizada');

%%Definir un elemento estructurante que sirve como filtro -->
##existen diferentes tipos de filtro en este ejemplo se usa en forma de diamante 
se = strel('diamond', 2); %elemento estructurante

%%Operación dilatación --> 
im3 = imdilate(bw2,se);
subplot(2,4,3); imshow(im3); title('dilatación');

%%Operación cerradura --> 
im4=imclose(im3,se);  
subplot(2,4,4); imshow(im4); title('cerradura');

%%Operación XOR --> 
im5=bitxor(im4,bw2);
subplot(2,4,5); imshow(im5); title('operacion XOR');

%%Operación inversión --> 
im6=1-im5;
subplot(2,4,6); imshow(im6); title('Operacion Inversion');

%%Operación erode --> 
im3 = imerode(bw2,se);
subplot(2,4,7); imshow(im3); title('Erosion');

%%Operación open --> 
im4=imopen(im3,se);  
subplot(2,4,8); imshow(im4); title('apertura');

