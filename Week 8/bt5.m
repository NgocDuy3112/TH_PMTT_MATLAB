t = 0: pi/100: 6 * pi;
x = sin(t);
y = cos(t);
z = t;

figure('Name', 'Bài tập 5', 'NumberTitle', 'off')
plot3(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
axis square;
title('Đồ thị hàm số x = sint, y = cost, z = t, 0 <= t <= 6pi');