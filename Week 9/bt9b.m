u = -1:0.01:1;
v = 0:pi/100:2*pi;
[U, V] = meshgrid(u, v);

x = sqrt(1 + 4*V.^2).*cos(U);
y = V;
z = sqrt(1 + 4*V.^2).*sin(U);

figure('Name', 'Bài tập 9b', 'NumberTitle', 'off')
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số bài tập 9b');