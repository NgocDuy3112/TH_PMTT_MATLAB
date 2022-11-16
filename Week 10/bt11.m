clc;
clear all;
close all;

syms x y;
f = x - 3*y^2;
n1 = input('Ban muon chia truc x thanh bao nhieu khoang? ');
n2 = input('Ban muon chia truc y thanh bao nhieu khoang? ');

S = XapXi_TichPhan_Boi(f, 0, 2, 1, 2, n1, n2);
Sm = int(int(f, y, 1, 2), x, 0, 2);
equal = '';
if(abs(S, Sm) < 10^-5), equal = ' '; else equal = ' khong '; end
fprintf('\nKet qua tich phan khong dung Matlab la %f\n', S)
fprintf('Ket qua tich phan dung Matlab la %f\n', Sm)
fprintf('Hai ket qua tren%sbang nhau', equal)