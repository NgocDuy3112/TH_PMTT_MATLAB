t = 0 : pi/100 : 2 * pi;
x = 5 * cos(t);
y = 5 * sin(t);

figure('Name', 'Bài tập 4', 'NumberTitle', 'off')
plot(x, y, 'b');
axis([-6 6 -6 6]);
axis equal;
xlabel('x');
ylabel('y');
title('Đồ thị hàm số x = 5cost, y = 5sint, 0 <= t <= 2pi');