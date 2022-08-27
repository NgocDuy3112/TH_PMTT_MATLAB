figure('Name', 'Bài tập 1b', 'NumberTitle', 'off')

x = 0:0.01:2;
y = -5:0.01:5;
[X, Y] = meshgrid(x, y);
f1 = sqrt(-X.^2 + 2*X);
f2 = -sqrt(-X.^2 + 2*X);
f3 = (X.^2 + Y.^2)/2;
Z = X.*Y - X.*Y;
mesh(X, f1, Z)
hold on
mesh(X, f2, Z)
hold on
mesh(X, Y, f3)
axis square
colormap('parula')
xlabel('x')
ylabel('y')
zlabel('z')