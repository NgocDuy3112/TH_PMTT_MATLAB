clc;
clear all;
close all;

syms x y z;

f = y;
E1 = '[0;3] x [0;x] x [x - y;x + y]';
fprintf('\nf = %s\n', string(f))
fprintf('E1 = %s\n', E1)
V1 = int(int(int(z, x - y, x + y), y, 0, x), x, 0, 3);
fprintf('Tich phan cua ham f tren mien E1 la %f\n', V1)

g = exp(x/y);
E2 = '[y;1] x [0;1] x [0;xy]';
fprintf('\ng = %s\n', string(g))
fprintf('E2 = %s\n',  E2)
V2 = int(int(int(z, 0, x*y), x, y, 1), y, 0, 1);
fprintf('Tich phan cua ham g tren mien E2 la %f\n', V2)

h = z/(z^2 + x^2);
E3 = '[0;z] x [1; 4] x [y; 4]';
fprintf('\nh = %s\n', string(h))
fprintf('E3 = %s\n', E3)
V3 = int(int(int(x, 0, z), z, y, 4), y, 1, 4);
fprintf('Tich phan cua ham h tren mien E3 la %f\n', V3)