x = -5 * pi: pi / 25: 5 * pi;
p = gobjects(1, 3);
figure('Name', 'Bài tập 4', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])

y1 = sin(x);
p(1) = plot(x, y1, 'red');
hold on;
y2 = cos(x);
p(2) = plot(x, y2, 'green');
hold on;
y3 = tan(x);
p(3) = plot(x, y3, 'blue');
hold on;

xlim([-5*pi 5*pi]);
ylim([-2 2]);

xlabel('x');
ylabel('y');
title('Đồ thị các hàm số y = sinx, y = cosx, y = tanx')
legend(p, 'y = sinx', 'y = cosx', 'y= tanx')