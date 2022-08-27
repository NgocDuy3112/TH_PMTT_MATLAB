figure('Name', 'Bài tập 7b', 'NumberTitle', 'off')

[X, Y, Z] = sphere(10);
[x, y, z] = surfnorm(X, Y, Z);
u = 1 + (x - x);
v = 2 + (y - y);
w = 3 + (z - z);
quiver3(x, y, z, u, v, w)

xlabel('x')
ylabel('y')
zlabel('z')
title('Trường vector')