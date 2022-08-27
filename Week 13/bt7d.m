figure('Name', 'Bài tập 7d', 'NumberTitle', 'off')

[X, Y, Z] = sphere(10);
[x, y, z] = surfnorm(X, Y, Z);
u = x;
v = y;
w = 3 + (z - z);
quiver3(x, y, z, u, v, w)

xlabel('x')
ylabel('y')
zlabel('z')
title('Trường vector')