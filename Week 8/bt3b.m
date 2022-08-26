x = -2:0.1:2;
y = -2:0.1:2;

[X, Y] = meshgrid(x, y);
Z = 0.5 * abs(X) + 0.5 * abs(Y);

figure('Name', 'Bài tập 3b', 'NumberTitle', 'off')
sgtitle('Đồ thị hàm số f(x, y) = 0.5|x| + 0.5|y|')

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