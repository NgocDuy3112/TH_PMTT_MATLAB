figure('Name', 'Bài tập 3', 'NumberTitle', 'off')

u_ = 0:0.01:1;
v_ = 0:pi/100:2*pi;
[U, V] = meshgrid(u_, v_);
X = (1 - U).*(3 + cos(V)).*cos(5*pi*U);
Y = (1 - U).*(3 + cos(V)).*sin(5*pi*U);
Z = 2*U + (1 - U).*sin(V);
mesh(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Đồ thị hàm số')

x = @(u, v) (1 - u).*(3 + cos(v)).*cos(5*pi*u);
y = @(u, v) (1 - u).*(3 + cos(v)).*sin(5*pi*u);
z = @(u, v) 2*u + (1 - u).*sin(v);
Q1 = quad2d(x1, 0, 1, 0, 2*pi);
Q2 = quad2d(x2, 0, 1, 0, 2*pi);
Q3 = quad2d(x3, 0, 1, 0, 2*pi);
Q = Q1 + Q2 + Q3;
fprintf('Tích phân tính bằng quad2d là %f\n', Q)

syms u v;
fx = (1 - u)*(3 + cos(v))*cos(5*pi*u);
fy = (1 - u)*(3 + cos(v))*sin(5*pi*u);
fz = 2*u + (1 - u)*sin(v);
I1 = int(int(fx, u, 0, 1), v, 0, 2*pi);
I2 = int(int(fy, u, 0, 1), v, 0, 2*pi);
I3 = int(int(fz, u, 0, 1), v, 0, 2*pi);
I = I1 + I2 + I3;
fprintf('Tích phân tính bằng int là %f\n', I)