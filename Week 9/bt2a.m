clc;
clear all;
close all;

A = [1 -2 3;...
    -1 3 0;...
    2 -5 5];
b = [9; -4; 17];
A_exp = [A b];
R = rref(A_exp);
disp(R)
x = R(:,end);
disp('Nghiem cua he phuong trinh la ');
disp(x)