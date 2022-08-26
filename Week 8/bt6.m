u = 0: pi/100 : 2*pi;
v = -pi/2 : pi/100 : pi/2;
[U, V] = meshgrid(u, v);

x = cos(V) .* cos(U);
y = cos(V) .* sin(U);
z = sin(V);

figure('Name', 'Bài tập 5', 'NumberTitle', 'off')
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số x = cos(v)cos(u), y = cos(v)sin(u), z = sin(v), 0 <= u <= 2pi, -pi/2 <= v <= pi/2');