figure('Name', 'Bài tập 1c', 'NumberTitle', 'off')

x = -5:0.01:5;
y = -5:0.01:5;
[X, Y] = meshgrid(x, y);
f1 = X.^2 + Y.^2;
f2 = 2*(X.^2 + Y.^2);
f3 = X;
f4 = X.^2;
Z = X.*Y - X.*Y;
mesh(X, Y, f1)
hold on
mesh(X, Y, f2)
hold on
mesh(X, f3, Z)
hold on
mesh(X, f4, Z)
axis square
colormap('parula')
xlabel('x')
ylabel('y')
zlabel('z')