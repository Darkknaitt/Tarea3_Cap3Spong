% Ejercicio 3.3
% Pablo Sotelo Abraham de Jesús
% Boleta: B230996
% Metodos Algebraicos para Robots

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
syms L1 L2; %simbolicos de distancias
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad
 A1 = [1 0 0 0;
       0 0 1 0;
       0 -1 0 L1;
       0   0    0   1]
 A2 = [1 0 0 0;
       0 1 0 0;
       0 0 1 L2  ;
       0 0 0 1]
   
T02 = simplify(A1*A2)