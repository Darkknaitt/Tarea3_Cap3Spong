% Ejercicio 3.9
% Pablo Sotelo Abraham de Jesús
% Boleta: B230996
% Metodos Algebraicos para Robots

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
syms q1 q2 q3;          %simbolicos de los angulos
syms L1 L2 L3 L4 L5 L6; %simbolicos de distancias
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad

 A1 = [1 0  0  0;
       0 0  1  0;
       0 -1 0  L3;
       0  0 0  1]
 A2 = [0 0 -1 0;
       1 0  0 0;
       0 -1 0 L2;
       0 0  0 1]
 A3 = [1 0 0 0;
       0 1 0 0;
       0 0 1 L3;
       0 0 0 1]
 A4 = [cos(q1) 0 -sin(q1) L4*cos(q1);
       sin(q1) 0 cos(q1)  L4*sin(q1);
        0      1     0       0      ;
        0      0     0       1      ]
 A5 = [cos(q2) 0 sin(q2)  L5*cos(q2);
       sin(q2) 0 -cos(q1) L5*sin(q2);
        0      1     0       0      ;
        0      0     0       1      ]
 A6 = [cos(q3) -sin(q3) 0 L6*cos(q3);
       sin(q3)  cos(q3) 0 L6*sin(q3);
       0           0    1   0       ;
       0           0    0   1]
    
T06 = simplify(simplify(A1*A2*A3*A4*A5*A6))
   