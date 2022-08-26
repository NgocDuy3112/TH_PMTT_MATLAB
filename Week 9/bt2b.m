A = [3 3 4;...
    1 1 4;...
    2 -5 4];
B = [2; -2; 3];
A_exp = [A B];
X1 = A\B;
disp(X1)
R = rref(A_exp);
X2 = R(:,end);
disp(X2)