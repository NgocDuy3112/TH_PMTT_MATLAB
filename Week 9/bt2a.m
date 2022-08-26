A = [1 -2 3;...
    -1 3 0;...
    2 -5 5];
b = [9; -4; 17];
A_exp = [A b];
R = rref(A_exp);
disp(R)
x = R(:,end);
disp('Nghiệm của hệ phương trình là ');
disp(x)