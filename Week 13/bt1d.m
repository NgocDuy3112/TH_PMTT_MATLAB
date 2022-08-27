figure('Name', 'Bài tập 1d', 'NumberTitle', 'off')

x = -5:0.01:5;
y = -5:0.01:5;
[X, Y] = meshgrid(x, y);
Z1 = 6 - X.^2 - Y.^2;
Z2 = sqrt(X.^2 + Y.^2);
mesh(X, Y, Z1)
hold on
mesh(X, Y, Z2)
axis square
colormap('parula')
xlabel('x')
ylabel('y')
zlabel('z')