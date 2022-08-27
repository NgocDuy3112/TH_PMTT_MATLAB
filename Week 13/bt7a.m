figure('Name', 'Bài tập 7a', 'NumberTitle', 'off')

[X, Y, Z] = sphere(10);
[x, y, z] = surfnorm(X, Y, Z);
r = sqrt(x.^2 + y.^2 + z.^2);
u = (-1./r.^3).*x;
v = (-1./r.^3).*y;
w = (-1./r.^3).*z;
quiver3(x, y, z, u, v, w)

xlabel('x')
ylabel('y')
zlabel('z')
title('Trường vector')