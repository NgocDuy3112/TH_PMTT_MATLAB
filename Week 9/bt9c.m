y = 0:pi/100:4*pi;
t = 0:pi/100:2*pi;
[u, v] = meshgrid(y, t);

X = (2 + sin(u)).*cos(v);
Y = u;
Z = (2 + sin(u)).*sin(v);

figure('Name', 'Bài tập 9b', 'NumberTitle', 'off')
mesh(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số bài tập 9c');