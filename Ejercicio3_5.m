% Ejercicio 3.5
% Pablo Sotelo Abraham de Jesús
% Boleta: B230996
% Metodos Algebraicos para Robots

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
syms q1 q2 q3;
syms L1 L2 L3; %simbolicos de distancias
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad

 A1 = [cos(q1+(pi/2)) 0 sin(q1+(pi/2)) 0;
       sin(q1+(pi/2)) 0 -cos(q1+(pi/2)) 0;
       0  1    0   0  ;
       0   0    0   1]
 A2 = [1  0 0 0;
       0  0 1 0;
       0 -1 0 L1+L2;
       0  0 0 1]
 A3 = [cos(-q2-(pi/2)) -sin(-q2-(pi/2)) 0 L3*cos(-q2-(pi/2));
       sin(-q2-(pi/2)) -cos(-q2-(pi/2)) 0 L3*sin(-q2-(pi/2));
       0   0    1   0  ;
       0   0    0   1] 
T01 = A1
T02 = simplify(A1*A2)
T03 = simplify(A1*A2*A3)