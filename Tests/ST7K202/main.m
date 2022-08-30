clear all
close all
clc
disp('Câu 1')
A = [1 1 -3 2;...
    1 -2 0 -1;...
    0 1 1 3;...
    2 -3 0 -2];
b = [0; 0; 0; 0];
A_b = [A b];
X = rref(A_b);
disp(X(:, end))
clear all
m = input('Nhập số tự nhiên m lớn hơn hoặc bằng 5: ');
while (m < 5)
    m = input('Nhập số tự nhiên m lớn hơn hoặc bằng 5: ');
end
n = input('Nhập số tự nhiên n lớn hơn hoặc bằng 5: ');
while (n < 5)
    n = input('Nhập số tự nhiên n lớn hơn hoặc bằng 5: ');
end
A = round(-20 + (30 - (-20))*rand(m, n));
fprintf('A = \n')
disp(A)
B = round(-20 + (30 - (-20))*rand(n, n));
fprintf('B = \n')
disp(B)
C = round(-20 + (30 - (-20))*rand(n, m));
fprintf('C = \n')
disp(C)
D = B^2 - B.*B;
fprintf('D = \n')
disp(D)
E = (B*B')^2 - A'*(A*C + eye(m))*C';
fprintf('E = \n')
disp(E)
U = B^3;
u = U(end-1,:);
v = E(:,1) - E(:,2) + E(:,3) - E(:,4);
w = u.*v;
F = w*w';
G = w'*w;
Norm_1 = trace(F);
fprintf('trace(ww'') = %f\n', Norm_1)
Norm_2 = trace(G);
fprintf('trace(w''w) = %f\n', Norm_2)
Norm = norm(w, 2);
fprintf('||w||2 = %f\n', Norm)
if (and(Norm_1 == Norm_2, Norm_2 == Norm))
    fprintf('||w||2 = trace(w''w) = trace(ww'')')
end
a1 = [0 0 1 2];
a2 = [0 2 3 1];
a3 = [1 3 4 5];
a4 = [-1 7 -3 -6];
S = [a1; a2; a3; a4];
r = rank(S);
if (r == n)
    fprintf('Bộ vector là cơ sở trong R4\n')
else
    fprintf('Bộ vector không là cơ sở trong R4\n')
end

char = input('Nhập phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 2')
figure('Name', 'Câu 2a', 'NumberTitle', 'off')
x1 = 0:0.01:20;
f = -exp(-3*x1) - sin(x1).^3;
plot(x1, f, 'r-')
hold on
x2 = 2.7:0.01:7.5;
g = sin(x2) + sin(10/3*x2) + log(x2) - 0.84*x2 + 3;
plot(x2, g, 'b-.')
xlabel('Thời gian')
ylabel('Biên độ')
title('Biên độ dao động của vật')
legend('Sườn dốc', 'Sườn đồi')
clear all
figure('Name', 'Câu 2b', 'NumberTitle', 'off')
x = -10:0.01:10;
y = -10:0.01:10;
[X, Y] = meshgrid(x, y);
Z = (abs(X) - 5).^2 + (abs(Y) - 5).^2;
meshc(X, Y, Z);
xlabel('x')
ylabel('y')
zlabel('f(x, y)')
title('Hàm Price01')
zlabel('z')

char = input('Nhập phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 3')
syms x y z;
f = x^3 + y^3 + z^3 - x*y*z;
g = exp(1/sqrt(2)*x + 1/sqrt(2)*z)*sin(y);
fprintf('f = %s\n', string(f))
if (Kiemtra_Hamdieuhoa(f))
    fprintf('Hàm f là hàm điều hoà\n')
else
    fprintf('Hàm f không là hàm điều hoà\n')
end
fprintf('g = %s\n', string(g))
if (Kiemtra_Hamdieuhoa(g))
    fprintf('Hàm g là hàm điều hoà\n')
else
    fprintf('Hàm g không là hàm điều hoà\n')
end
clear all
syms n;
phi = (1 + sqrt(5))/2;
F = (phi^n - (-phi)^(-n))/sqrt(5);
fprintf('F = %s\n', string(F))
for i = 1:10
    fprintf('a%d = %d\n', i, subs(F, n, i))
end
G = F/exp(n);
fprintf('G = %s\n', string(G))
fprintf('limG = %f\n', limit(G, n, Inf))

char = input('Nhập phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 4')
n = input('Nhập số chiều của hai ma trận A và B: ');
A = round(-100 + (100 - (-100))*rand(n));
fprintf('A = \n')
disp(A)
B = round(-100 + (100 - (-100))*rand(n));
fprintf('B = \n')
disp(B)
[O, Q, n3, ind] = Xuly_matran(A, B);
fprintf('O = \n')
disp(O)
fprintf('Q = \n')
disp(Q)
fprintf('n3 = \n')
disp(n3)
fprintf('ind = \n')
disp(ind)

char = input('Nhập phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 5')
M = round(-20 + (30 - (-20))*rand(10, 10));
fprintf('M = \n')
disp(M)
A = M'*M + eye(10);
fprintf('A = \n')
disp(A)
b = round(10 + (10 - 0)*rand(10, 1));
fprintf('b = \n')
disp(b)
xe = A\b;
fprintf('xe = \n')
disp(xe)
x0 = [0; 1; 0; 1; 0; 1; 0; 1; 0; 1];
x = TT_Gauss_Seidel(A, b, x0, 0.001, 1000);
fprintf('x = \n')
disp(x)
err = norm(x - xe, Inf);
fprintf('||x - xe||oo = %f\n', err)

char = input('Nhập phím bất kì để tiếp tục: ');
clear all
close all
clc