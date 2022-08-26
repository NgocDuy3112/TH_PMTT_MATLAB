u = 0 : pi/10 : 2*pi;
v = -2: 0.01 : 2;
[U, V] = meshgrid(u, v);
x = cos(U);
y = sin(U);
z = V;

s = -pi/2 : pi/10 : pi/2;
t = 0 : pi/10 : 2*pi;
[S, T] = meshgrid(s, t);
x1 = 1 + cos(S).*(1 + 1/4*cos(T));
y1 = 1/4*sin(T);
z1 = 1/2 + sin(S).*(1 + 1/4*cos(T));

figure('Name', 'Bài tập 12', 'NumberTitle', 'off')
title('Đồ thị hàm số');
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
hold on;
mesh(x1, y1, z1);
xlabel('x');
ylabel('y');
zlabel('z');
axis([-2 3 -2 2 -2 2]);