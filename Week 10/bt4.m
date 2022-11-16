clc;
clear all;
close all;

syms x y a;

f1 = cos(y^3);
fprintf('\nf1(x) = %s\n', string(f1))
fprintf('Ket qua cua tich phan boi la %f\n',...
    int(int(f1, x, 0, y^2), y, 0, 1))

f2 = 1/(4 - x^2);
fprintf('\nf2(x) = %s\n', string(f2))
fprintf('Ket qua cua tich phan boi la %f\n',...
    int(int(f2, x, -1, y), y, -1, 1))

f3 = 1/nthroot(a^2 - x^2, 2);
fprintf('\nf3(x) = %s\n', string(f3))
fprintf('Nguyen ham boi la: %s\n', int(int(f3, x), y))

f4 = cos(y^2);
fprintf('\nf4(x) = %s\n', string(f4))
fprintf('Ket qua cua tich phan boi la %f\n',...
    int(int(f1, y, x, 1), x, 0, 1))

f5 = y*exp(x^2)/x^3;
fprintf('\nf5(x) = %s\n', string(f5))
fprintf('Ket qua cua tich phan boi la %f\n',...
    int(int(f1, x, nthroot(y, 2), 1), y, 0, 1))