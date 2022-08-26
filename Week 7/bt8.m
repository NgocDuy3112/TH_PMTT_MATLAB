figure('Name', 'Bài tập 8', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])

subplot(1, 2, 1);
x = -5:0.01:5;
f = exp(-x.^2);
plot(x, f, '-b');
axis([-5 5 0 1]);
xlabel('x');
ylabel('y');
title('Đồ thị hàm số y = e^{-x^2}');
legend('y = e^{-x^2}');

subplot(1, 2, 2);
x = -5:0.1:5;
y = 0:0.1:2;
[X, Y] = meshgrid(x, y);
Z = exp(-(X.^2 + Y.^2));
surfc(X, Y, Z);
title('Đồ thị hàm số y = e^{-(x^2 + y^2)}');