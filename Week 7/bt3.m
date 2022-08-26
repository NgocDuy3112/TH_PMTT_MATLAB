x = -5:0.5:5;
y = -x./ (1 + x.^4);

figure('Name', 'Bài tập 3', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])

plot(x, y, '-. r o', 'LineWidth', 2, 'MarkerSize', 6, ...
    'MarkerFaceColor', 'green', 'MarkerEdgeColor', 'black')

xlim([-5 5]);
ylim([-1 1]);
xlabel('x');
ylabel('y');
legend('y = -x / (1 + x^4)');
title('Đồ thị hàm số y = -x / (1 + x^4)');