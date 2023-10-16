% Ejercicio 3.10
% Pablo Sotelo Abraham de Jesús
% Boleta: B230996
% Metodos Algebraicos para Robots

clc         %Limpiar pantalla
clear all   %Limpiar las variables
close       %Cerrar gráficas que existen
syms q1 q2 q3 q4 q5 q6;          %simbolicos de los angulos
syms L1 L2 L3 L4 L5 L6; %simbolicos de distancias
Tid=[1 0 0 0;
     0 1 0 0;
     0 0 1 0;
     0 0 0 1]; % Matriz identidad

 A1 = [cos(q1) 0 sin(q1)  0;
       sin(q1) 0 -cos(q1) 0;
        0      1     0   13;
        0      0     0    1]
 A2 = [cos(q2) -sin(q2) 0 8*cos(q2);
       sin(q2)  cos(q2) 0 8*sin(q2);
       0           0    1  L1;
       0           0    0   1]
 A3 = [cos(q3) 0 sin(q3)  8*cos(q3);
       sin(q3) 0 -cos(q3) 8*sin(q3);
          0    1    0       0      ;
          0    0    0       1      ]
 A4 = [cos(q4) 0 -sin(q4) 0;
       sin(q4) 0 cos(q4)  0;
       0      -1     0   L2;
       0       0     0    1]
 A5 = [cos(q5) 0 sin(q5)  0;
       sin(q5) 0 -cos(q5) 0;
       0       1    0     0;
       0       0    0     1]
 A6 = [cos(q6) -sin(q6) 0  0;
       sin(q6)  cos(q6) 0  0;
       0         0      1 L3;
       0         0      0  1]
T06 = simplify(A1*A2*A3*A4*A5*A6)
   