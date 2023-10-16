% Ejercicio 3.7
% Pablo Sotelo Abraham de Jesús
% Boleta: B230996
% Metodos Algebraicos para Robots

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
syms L1 L2 L3; %simbolicos de distancias
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad

 A1 = [1 0  0  0;
       0 0  1  0;
       0 -1 0  L1;
       0  0 0  1]
   
  A2 = [0 0 1 0;
        1 0 0 0;
        0 1 0 L2;
        0 0 0 1]
    
  A3 = [1 0 0 0;
        0 1 0 0;
        0 0 1 L3;
        0 0 0 1]
 
 T03 = simplify(A1*A2*A3)
   