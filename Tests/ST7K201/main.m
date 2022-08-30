clear all
close all
clc
disp('Câu 1')

A = [3 -2 -5 1;...
    2 -3 1 5;...
    1 2 0 -4;...
    1 -2 -4 9];
b = [0; 0; 0; 0];
A_b = [A b];
X = rref(A_b);
disp(X)

clear all

m = input('Nhập số tự nhiên m lớn hơn hoặc bằng 5: ');
while (m < 5)
    m = input('Nhập số tự nhiên m lớn hơn hoặc bằng 5: ');
end
n = input('Nhập số tự nhiên n lớn hơn hoặc bằng 5: ');
while (n < 5)
    n = input('Nhập số tự nhiên n lớn hơn hoặc bằng 5: ');
end
p = input('Nhập số tự nhiên p lớn hơn hoặc bằng 5: ');
while (p < 5)
    p = input('Nhập số tự nhiên p lớn hơn hoặc bằng 5: ');
end
A = round(-10 + (40 - (-10))*rand(m, n));
fprintf('A = \n')
disp(A)
B = round(-10 + (40 - (-10))*rand(n, n));
fprintf('B = \n')
disp(B)
C = round(-10 + (40 - (-10))*rand(n, p));
fprintf('C = \n')
disp(C)
D = A*B*C - A*B^(-1)*C;
fprintf('D = \n')
disp(D)
E = 2*(B'*B)^5 - A'*A*C*C';
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
a1 = [0 1 -3 4];
a2 = [-1 0 0 2];
a3 = [0 5 3 0];
a4 = [-1 7 -3 -6];
S = [a1; a2; a3; a4];
r = rank(S);
if (r == n)
    fprintf('Bộ vector là cơ sở trong R4\n')
else
    fprintf('Bộ vector không là cơ sở trong R4\n')
end

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 2')

figure('Name', 'Bài tập 2a', 'NumberTitle', 'off')
x1 = 0:0.01:4;
f = -exp(-x1).*sin(2*pi*x1);
plot(x1, f, 'b')
hold on
x2 = -5:0.01:5;
g = (x2.^2 - 5*x2 + 6)./(x2.^2 + 1);
plot(x2, g, 'r-.')
hold on
xlabel('Thời gian')
ylabel('Biên độ')
title('Biên độ dao động của vật')
legend('Lò xo', 'Hàm uốn')

clear all
figure('Name', 'Bài tập 2b', 'NumberTitle', 'off')
x = -4:0.01:4;
y = -4:0.01:4;
[X, Y] = meshgrid(x, y);
Z = (cos(X)).^2 + (sin(Y)).^2;
meshc(X, Y, Z)
xlabel('x')
ylabel('y')
zlabel('f(x, y)')
title('Hàm Parsopoulos')

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 3')

syms n;
x = exp(-n^(-2));
lim1 = limit(subs(x, n, 2*n), n, Inf);
lim2 = limit(subs(x, n, 3*n), n, Inf);
lim3 = limit(subs(x, n, 5*n), n, Inf);
lim4 = limit(subs(x, n, n), n, Inf);
lim5 = limit(subs(x, n, n + 1), n , Inf);
fprintf('lim x2n = %f\n', lim1)
fprintf('lim x3n = %f\n', lim2)
fprintf('lim x5n = %f\n', lim3)
fprintf('lim xn = %f\n', lim4)
fprintf('lim x(n + 1) = %f\n', lim5)

clear all
syms x R;
I_x = 1/sqrt(2*pi)*exp(x^2/2);
I_R = 1/sqrt(2*pi)*exp(R^2/2);
fprintf('Kết quả tình trực tiếp: %f\n', int(I_x, x, -Inf, Inf))
fprintf('Kết quả tính gián tiếp: %f\n', limit(int(I_R, R), R, Inf))

char = input('Nhấn phím bất kì để tiếp tục: ');
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
[U, W, n2, ind] = Xuly_matran(A, B);
fprintf('U = \n')
disp(U)
fprintf('W = \n')
disp(W)
fprintf('n2 = \n')
disp(n2)
fprintf('ind = \n')
disp(ind)

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 5')
A = round(-100 + (100 - (-100))*rand(10));
[Q, R] = TT_Givens_QR(A); 
disp(norm(Q'*Q - eyes(10), Inf))
disp(norm(A - Q*R, Inf))

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc