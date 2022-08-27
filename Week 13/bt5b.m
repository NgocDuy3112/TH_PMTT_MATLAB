figure('Name', 'Bài tập 5b', 'NumberTitle', 'off')

X = -5:0.5:5;
Y = -5:0.5:5;
[x, y] = meshgrid(X, Y);
u = y;
v = x;
quiver(x, y, u, v)
xlabel('x')
ylabel('y')
title('Trường vector')