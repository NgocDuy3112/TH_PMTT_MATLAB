p = gobjects(1, 4);
x = 0:0.05:4;

figure('Name', 'Bài tập 1', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])

y1 = x;
p(1) = plot(x, y1, 'blue');
hold on;
y2 = x.^3;
p(2) = plot(x, y2, 'red');
hold on;
y3 = exp(x);
p(3) = plot(x, y3, 'green');
hold on;
y4 = exp(x.^2);
p(4) = plot(x, y4, 'black');

xlim([0 4]);
ylim([0 100]);

xlabel('x')
ylabel('y')
title('Đồ thị các hàm số y = x, y = x^2, y = e^x và y = e^{x^2}')
legend(p, 'y = x', 'y = x^2', 'y = e^x', 'y = e^{x^2}')