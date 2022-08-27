figure('Name', 'Bài tập 1e', 'NumberTitle', 'off')

x = 0:0.01:10;
y = 0:0.01:10;
[X, Y] = meshgrid(x, y);
f1 = X + Y;
f2 = X.*Y;
f3 = 1 - X;
Z = X.*Y - X.*Y;
mesh(X, Y, f1)
hold on
mesh(X, Y, f2)
hold on
mesh(X, f3, Z)
axis square
colormap('parula')
xlabel('x')
ylabel('y')
zlabel('z')