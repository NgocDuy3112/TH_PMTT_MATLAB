figure('Name', 'Bài tập 5c', 'NumberTitle', 'off')

X = -5:0.5:5;
Y = -5:0.5:5;
[x, y] = meshgrid(X, Y);
u = 1 + (x - x);
v = sin(y);
quiver(x, y, u, v)
xlabel('x')
ylabel('y')
title('Trường vector')