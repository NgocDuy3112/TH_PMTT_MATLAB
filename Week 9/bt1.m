clc;
clear all;
close all;

A = [2 4 5/2;...
    -3/4 2 1/4;...
    1/4 1/2 2];
B = [1 -1/2 3/4;...
    3/2 1/2 -2;...
    1/4 1 1/2];

A1 = A^-1 * B^-1;
fprintf('\nMa tran A1 = A^-1*B^-1 =\n')
print_matrix(A1)

A2 = (A*B)^-1;
fprintf('\nMa tran A2 = (AB)^-1 =\n')
print_matrix(A2)

A3 = (B*A)^-1;
fprintf('\nMa tran A3 = (BA)^-1 =\n')
print_matrix(A3)


B1 = (A^-1)';
fprintf('\nMa tran B1 = (A^-1)^T =\n')
print_matrix(B1)

B2 = (A')^-1;
fprintf('\nMa tran B2 = (A^T)^-1 =\n')
print_matrix(B2)