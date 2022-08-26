x = -5:0.5:5;
f = abs(x.^2 + 3*x);
g = x.^3 - x - 2;
figure('Name', 'Bài tập 6a', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])

subplot(1, 2, 1);
plot(x, f, '-b');
axis([-5 5 -3 3]);
xlabel('x');
ylabel('y');
title('Đồ thị hàm số y = |x^2 + 3x|');

subplot(1, 2, 2);
plot(x, g, '-g');
axis([-5 5 -3 3]);
xlabel('x');
ylabel('y');
title('Đồ thị hàm số y = x^3 - x - 2');