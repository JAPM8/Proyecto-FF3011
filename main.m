%-------------------------------------------------------------------------------
% Proyecto 1 - Teor�a Electromagn�tica
% Por: Jorge Ricardo Cer�n Cheley, Gerardo Paz Fuentes y Javier Alejandro P�rez
%
% Programa que resuelve soluci�n Ecuaci�n de Laplace de dos dimensiones del
% Ejemplo 6.5 del libro de Elements of Electromagnetics de Matthew N. O. Sadiku.
%
% Third Edition p�gina 211 - 219.
%-------------------------------------------------------------------------------
clc %Clear inicial de consola

V = []; %Valores de potencial
Vo = 100.0; %Condici�n inicial de potencial
%Constantes
a = 1; %Ancho
b = 5; %Largo
c = 4*Vo/pi;
%Puntos coordenados
x = [0.25,0.25,0.25,0.50,0.50,0.50,0.75,0.75,0.75];
y = [0.25,0.50,0.75,0.25,0.50,0.75,0.25,0.50,0.75];


for i=1:9 %Se recorren las 9 coordenadas en los arreglos x & y
  suma = 0; %En cada repetici�n se reinicia sumatoria
  for k=1:5 % Se limita a los primeros 5 t�rminos de la serie
    n = 2*k-1; %n toma los primeros 5 valores impares [1,3,5,7,9]
    %Se divide la sumatoria en 3 t�rminos para hacerla m�s entendible
    %Todas las funciones trigonom�tricas son calculadas en radianes
    t1 = sin(n*pi*x(i)/b);
    t2 = sinh(n*pi*y(i)/b);
    t3 = n*sinh(n*pi*a/b);
    %Se compone la sumatoria con los 3 t�rminos y se suma valor t�rmino anterior
    suma = suma +c*t1*t2/t3;
  end
  %Se guarda en arreglo coordenada y potencial en ese punto
  V =[V,[x(i),y(i),suma]];
end

b %Se devuelve valor de b que es el �nico variable
V %Se devuelve el array de coordenada y potencial



