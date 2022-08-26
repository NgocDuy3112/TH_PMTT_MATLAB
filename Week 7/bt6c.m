figure('Name', 'Bài tập 6c', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])

subplot(2, 2, 1);
x = -5:0.01:5;
f = exp(x);
plot(x, f, '-b')
axis([-5 5 0 5]);
xlabel('x')
ylabel('y')
title('Đồ thị hàm số y = e^x')

subplot(2, 2, 2);
x = 0:0.01:5;
g = log(x);
plot(x, g, '-g')
axis([0 5 -2 2]);
xlabel('x')
ylabel('y')
title('Đồ thị hàm số y = ln(x)')

subplot(2, 2, 3);
x = -3*pi : pi/25 : 3*pi;
h = sin(x);
plot(x, h, '-r')
axis([-3*pi 3*pi -1 1]);
xlabel('x')
ylabel('y')
title('Đồ thị hàm số y = sin(x)')

subplot(2, 2, 4);
x = -3*pi : pi/25 : 3*pi;
k = cos(x);
plot(x, k, '-r')
axis([-3*pi 3*pi -1 1]);
xlabel('x')
ylabel('y')
title('Đồ thị hàm số y = cos(x)')