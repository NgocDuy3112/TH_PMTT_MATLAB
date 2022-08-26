t = 0: pi/1000: 2*pi;
x = (4 + 3*cos(11*t)).*cos(t);
y = (4 + 3*cos(11*t)).*sin(t);

figure('Name', 'Bài tập 7', 'NumberTitle', 'off')
plot(x, y, 'b');
axis([-8 8 -8 8]);
axis equal;
xlabel('x');
ylabel('y');
title('Đồ thị hàm số x = (4 + 3*cos(11*t))*cos(t), y = (4 + 3*cos(11*t))*sin(t), 0 <= t <= 2pi');