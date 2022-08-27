figure('Name', 'Bài tập 5a', 'NumberTitle', 'off')

X = -5:0.5:5;
Y = -5:0.5:5;
[x, y] = meshgrid(X, Y);
z = x.^2.*y - y.^3;
[u, v] = gradient(z);
quiver(x, y, u, v)
xlabel('x')
ylabel('y')
title('Trường vector')