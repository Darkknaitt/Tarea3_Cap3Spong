% Ejercicio 3.4
% Pablo Sotelo Abraham de Jesús
% Boleta: B230996
% Metodos Algebraicos para Robots

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
syms q1 q2 q3;
syms H1 L1 L2; %simbolicos de distancias
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad

 A1 = [cos(q1+(pi/2)) 0 sin(q1+(pi/2)) H1*cos(q1+(pi/2));
       sin(q1+(pi/2)) 0 -cos(q1+(pi/2)) H1*sin(q1+(pi/2));
       0  -1    0   0  ;
       0   0    0   1]
 A2 = [1   0    0   0;
       0   1    0   0;
       0   0    1   L1+L2  ;
       0   0    0   1]

T02 = simplify(A1*A2)

