clear;
close all;

img=imread('prueba.jpg');

%%Se separa en componentes red, green y blue
r=img(:,:,1);
g=img(:,:,2);
b=img(:,:,3);

%%Se restan las matrices r y b a la imagen original
res=img -(g+b);
res1=img-(r+b);
res2=img-(r+g);

%%Se muestran en suplot
subplot(2,2,1);
imshow(res);title('capa roja');
subplot(2,2,2);
imshow(res1);title('capa verde');
subplot(2,2,3);
imshow(res2);title('capa azul');