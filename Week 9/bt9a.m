r = 0:0.01:4;
phi = 0:pi/100:2*pi;
[R, Phi] = meshgrid(r, phi);

x = R.*cos(Phi);
y = R.*sin(Phi);
z = R.^2 + 1;

figure('Name', 'Bài tập 9a', 'NumberTitle', 'off')
mesh(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số bài tập 9a');