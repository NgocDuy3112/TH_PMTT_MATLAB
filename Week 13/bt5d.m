figure('Name', 'Bài tập 5d', 'NumberTitle', 'off')

X = -5:0.5:5;
Y = -5:0.5:5;
[x, y] = meshgrid(X, Y);
u = x - 2;
v = x + 1;
quiver(x, y, u, v)
xlabel('x')
ylabel('y')
title('Trường vector')