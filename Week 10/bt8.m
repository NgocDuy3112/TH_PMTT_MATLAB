clc;
clear all;
close all;

syms x y;

f = exp(-x^2);
fprintf('\nf(x) = %s\n', string(f))
fprintf('Tich phan tu -oo den +oo cua ham f la %f\n',...
    int(f, -Inf, Inf))

g = exp(-x^2-y^2);
fprintf('\ng(x, y) = %s\n', string(g))
fprintf('Tich phan tren mien [-oo; +oo] x [-oo; +oo] cua ham g la %f\n',...
    int(int(g, x, -Inf, Inf), y, -Inf, Inf))