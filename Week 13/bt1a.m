figure('Name', 'Bài tập 1a', 'NumberTitle', 'off')

x = -10:0.01:10;
y = -10:0.01:10;
[X, Y] = meshgrid(x, y);
f1 = sqrt(X.^2 + Y.^2);
f2 = -sqrt(X.^2 + Y.^2);
f3 =  nthroot(3 - X.^2 - Y.^2, 3);
mesh(X, Y, f1)
hold on
mesh(X, Y, f2)
hold on
mesh(X, Y, f3)
axis square
colormap('parula')
xlabel('x')
ylabel('y')
zlabel('z')