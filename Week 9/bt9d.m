u = 0:pi/100:2*pi;
v = 0:pi/100:4*pi;
[U, V] = meshgrid(u, v);

x = cos(U)/4 + cos(V);
y = sin(U)/4 + sin(V);
z = V;

figure('Name', 'Bài tập 9d', 'NumberTitle', 'off')
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số bài tập 9d');