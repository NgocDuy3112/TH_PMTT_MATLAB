figure('Name', 'Bài tập 6b', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])

subplot(2, 1, 1);
x = -3:0.25:3;
f = x.^2;
plot(x, f, '-b');
axis([-3 3 0 5]);
xlabel('x');
ylabel('y');
title('Đồ thị hàm số y = x^2');

subplot(2, 1, 2);
x = 0:0.25:3;
g = sqrt(x);
plot(x, g, '-g');
axis([0 3 0 3]);
xlabel('x');
ylabel('y');
title('Đồ thị hàm số y = sqrt(x)');