x = -4:0.1:4;
y = -4:0.1:4;

[X, Y] = meshgrid(x, y);
Z = X.^2 .* Y .* exp(-X.^2 - Y.^2);

figure('Name', 'Bài tập 3a', 'NumberTitle', 'off')
sgtitle('Đồ thị hàm số f(x, y) = x^2ye^{-x^2-y^2}')

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