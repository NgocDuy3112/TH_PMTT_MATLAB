figure('Name', 'Bài tập 5e', 'NumberTitle', 'off')

X = 1:0.5:10;
Y = 1:0.5:10;
[x, y] = meshgrid(X, Y);
u = y;
v = 1./x;
quiver(x, y, u, v)
xlabel('x')
ylabel('y')
title('Trường vector')