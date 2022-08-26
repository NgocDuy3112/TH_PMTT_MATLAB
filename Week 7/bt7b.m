x = -2:0.1:2;
y = -2:0.1:2;
[X, Y] = meshgrid(x, y);
Z = sin(pi * X) + sin(pi * Y) + sin(pi * X + pi * Y);

figure('Name', 'Bài tập 7b', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])
sgtitle('Đồ thị hàm số f(x, y) = sin(pi * x) + sin(pi * y) + sin(pi * x + pi * y)');

subplot(2, 3, 1);
plot3(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Dùng lệnh plot3');

subplot(2, 3, 2);
mesh(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Dùng lệnh mesh');

subplot(2, 3, 3);
meshc(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Dùng lệnh meshc');

subplot(2, 3, 4);
surf(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Dùng lệnh surf');

subplot(2, 3, 5);
surfc(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Dùng lệnh surfc');

subplot(2, 3, 6);
waterfall(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Dùng lệnh waterfall');