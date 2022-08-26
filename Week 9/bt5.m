A = [3 3 4;...
    1 1 4;...
    2 -5 4];
b = [2; -2; 3];

x = zeros(3, 1);
A1 = A;
A1(:, 1) = b;
x(1) = det(A1)/det(A);
A2 = A;
A2(:, 2) = b;
x(2) = det(A2)/det(A);
A3 = A;
A2(:, 3) = b;
x(3) = det(A)/det(A);

disp('Nghiệm của hệ phương trình là:')
disp(x)