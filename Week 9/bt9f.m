u = 0:pi/100:2*pi;
v = 0:pi/100:4*pi;
[U, V] = meshgrid(u, v);

x = U.*cos(V);
y = U.*sin(V);
z = U.*V;

figure('Name', 'Bài tập 9f', 'NumberTitle', 'off')
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số bài tập 9f');