x = 0:0.25:4;

figure('Name', 'Bài tập 2', 'NumberTitle', 'off', ...
    'units','normalized','outerposition',[0 0 1 1])

y = exp(x.^2);
plot(x, y, '-.b^')

xlim([0 4]);
ylim([0 1000]);
xlabel('x');
ylabel('y');
title('Đồ thị hàm số y = e^{x^2}');
legend('y = e^{x^2}');