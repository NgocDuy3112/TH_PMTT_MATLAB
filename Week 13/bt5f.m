figure('Name', 'Bài tập 5f', 'NumberTitle', 'off')

X = -5:0.5:5;
Y = -5:0.5:5;
[x, y] = meshgrid(X, Y);
u = log(1 + y.^2);
v = log(1 + x.^2);
quiver(x, y, u, v)
xlabel('x')
ylabel('y')
title('Trường vector')