figure('Name', 'Bài tập 2c', 'NumberTitle', 'off')

a = 2;
s = 0:pi/100:2*pi;
t = -1:0.01:1;
[S, T] = meshgrid(s, t);

x = (a + T.*cos(S/2)).*cos(S);
y = (a + T.*cos(S/2)).*sin(S);
z = T.*sin(S/2);
meshc(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Đồ thị hàm số')