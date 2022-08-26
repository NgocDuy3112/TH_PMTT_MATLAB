u = 0 : pi/10 : 2*pi;
v = -2: 0.01 : 2;

[U, V] = meshgrid(u, v);
x = cos(U);
y = sin(U);
z = V;
x_1 = 0.5 * cos(U);
y_1 = V;
z_1 = 0.5 * sin(U);

figure('Name', 'Bài tập 11', 'NumberTitle', 'off')
title('Đồ thị hàm số');
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
hold on;
mesh(x_1, y_1, z_1);
xlabel('x');
ylabel('y');
zlabel('z');
axis([-1 1 -1.5 1.5 -1.5 1.5]);
pbaspect([2 2 1]);