clear;
pkg load image;
close all;
%%Ejemplo de binarizar una imagen
im=imread('prueba.jpg');

%%Mostrar en una ventana una imagen
figure(1); 
subplot(2,3,1); imshow(im); title('imagen original');

%%Definir el nivel de gris para binarizar--> 
nivel = graythresh(im); %umbral de nivel de gris

%%Binarizar una imagen --> 
bw2=im2bw(im,nivel);
subplot(2,3,2); imshow(bw2); title('imagen binarizada');

%%Definir un elemento estructurante --> 
se = strel('diamond', 2); %elemento estructurante

%%Operaci�n dilataci�n --> 
im3 = imdilate(bw2,se);
subplot(2,3,3); imshow(im3); title('dilataci�n');

%%Operaci�n cerradura --> 
im4=imclose(im3,se);  
subplot(2,3,4); imshow(im4); title('cerradura');

%%Operaci�n XOR --> 
im5=bitxor(im4,bw2);
subplot(2,3,5); imshow(im5); title('operacion XOR');

%%Operaci�n inversi�n --> 
im6=1-im5;
subplot(2,3,6); imshow(im6); title('Operacion Inversion');
