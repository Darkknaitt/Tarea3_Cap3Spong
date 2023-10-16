% Ejercicio 3.6
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

 A1 = [cos(q1) 0  sin(q1) 0   ;
       sin(q1) 0 -cos(q1) 0   ;
       0       1    0     L1  ;
       0   0    0   1]
   
  A2 = [cos(q2) -sin(q2) 0 L2*cos(q2);
        sin(q2)  cos(q2) 0 L2*sin(q2);
        0           0    1     0     ;
        0           0    0     1     ]
    
  A3 = [cos(q3) -sin(q3) 0 L3*cos(q3);
        sin(q3)  cos(q3) 0 L3*sin(q3);
        0           0    1     0     ;
        0           0    0     1     ]    
 
 T03 = simplify(A1*A2*A3)
   