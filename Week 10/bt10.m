clc;
clear all;
close all;

syms x;

f1 = exp(x);
P1 = DaThuc_Taylor(f1, 6, 0);
Pm1 = taylor(f1, x, 0, 'order', 6);
fprintf('\nf1 = %s\n', string(f1))
fprintf('Da thuc Taylor khong dung Matlab: %s\n', string(P1))
fprintf('Da thuc Taylor dung Matlab: %s\n', string(Pm1))
equal1 = '';
if(isequal(P1, Pm1)), equal1 = ' khong '; else, equal1 = ' '; end
fprintf('Hai da thuc tren%s bang nhau\n', equal1);

f2 = cos(x);
P2 = DaThuc_Taylor(f2, 6, 0);
Pm2 = taylor(f2, x, 0, 'order', 6);
fprintf('\nf2 = %s\n', string(f2))
fprintf('Da thuc Taylor khong dung Matlab: %s\n', string(P2))
fprintf('Da thuc Taylor dung Matlab: %s\n', string(Pm2))
equal2 = '';
if(isequal(P2, Pm2)), equal2 = ' khong '; else, equal2 = ' '; end
fprintf('Hai da thuc tren%s bang nhau\n', equal2);

f3 = sin(x);
P3 = DaThuc_Taylor(f3, 6, 0);
Pm3 = taylor(f3, x, 0, 'order', 6);
fprintf('\nf3 = %s\n', string(f3))
fprintf('Da thuc Taylor khong dung Matlab: %s\n', string(P3))
fprintf('Da thuc Taylor dung Matlab: %s\n', string(Pm3))
equal3 = '';
if(isequal(P3, Pm3)), equal3 = ' khong '; else, equal3 = ' '; end
fprintf('Hai da thuc tren%s bang nhau\n', equal3);

f4 = log(x);
P4 = DaThuc_Taylor(f4, 6, 1);
Pm4 = taylor(f4, x, 1, 'order', 6);
fprintf('\nf4 = %s\n', string(f4))
fprintf('Da thuc Taylor khong dung Matlab: %s\n', string(P4))
fprintf('Da thuc Taylor dung Matlab: %s\n', string(Pm4))
equal4 = '';
if(isequal(P4, Pm4)), equal4 = ' khong '; else, equal4 = ' '; end
fprintf('Hai da thuc tren%s bang nhau\n', equal4);