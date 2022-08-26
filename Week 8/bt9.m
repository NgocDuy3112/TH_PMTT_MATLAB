u = 0 : pi/100 : 2*pi;
v = -5 : 0.01 : 5;

[U, V] = meshgrid(u, v);
x = cos(U);
y = sin(U);
z = V;

figure('Name', 'Bài tập 9', 'NumberTitle', 'off')
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số x = cos(u), y = sin(u), z = v, 0 <= u <= 2pi, -5 <= v <= 5');