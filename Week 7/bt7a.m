x = -5:0.1:5;
y = -5:0.1:5;
[X, Y] = meshgrid(x, y);
Z = 3 * X - X.^3 - 2 * Y.^2 + Y.^4;

figure('Name', 'Bài tập 7a', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])
sgtitle('Đồ thị hàm số f(x, y) = 3x - x^3 + 2y^2 + y^4');

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