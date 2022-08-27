figure('Name', 'Bài tập 7e', 'NumberTitle', 'off')

[X, Y, Z] = sphere(10);
[x, y, z] = surfnorm(X, Y, Z);
u = y;
v = z;
w = x;
quiver3(x, y, z, u, v, w)

xlabel('x')
ylabel('y')
zlabel('z')
title('Trường vector')