u = 0:pi/100:4*pi;
v = 0:pi/100:2*pi;
[U, V] = meshgrid(u, v);

x = cos(U);
y = sin(U);
z = U + V/4;

figure('Name', 'Bài tập 9e', 'NumberTitle', 'off')
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số bài tập 9e');