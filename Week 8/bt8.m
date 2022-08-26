t = 0: pi/1000 : 6*pi;

x = sqrt(t).*sin(2*t);
y = sqrt(t).*cos(2*t);
z = 0.5*t;

figure('Name', 'Bài tập 8', 'NumberTitle', 'off')
plot3(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số x = sqrt(t)*sin(2*t), y = sqrt(t)*cos(2*t), z = 0.5*t, 0 <= t <= 6pi');