syms x y z;

f1 = exp(y - x);
fprintf('\nf1 = %s\n', string(f1))
I1 = int(int(f1, y, 0, 0.5), x, 0, 0.5);
fprintf('Tích phân cần tính là %f\n', I1);

f2 = y*sin(x) + x*cos(y);
fprintf('\nf2 = %s\n', string(f2))
I2 = int(int(f2, y, 0, 2*pi), x, -pi, 3*pi/2);
fprintf('Tích phân cần tính là %f\n', I2);

f3 = 1/sqrt(1 - y^2);
fprintf('\nf3 = %s\n', string(f3))
I3 = int(int(f3, y, 0, sin(x)), x, 0, pi/4);
fprintf('Tích phân cần tính là %f\n', I3);

f4 = exp(x + y + z);
fprintf('\nf4 = %s\n', string(f4))
I4 = int(int(int(f4, z, 0, 0.5), y, 1, 2), x, 0, 1);
fprintf('Tích phân cần tính là %f\n', I4);

f5 = y^2*z;
fprintf('\nf5 = %s\n', string(f5))
I5 = int(int(int(f5, z, 0, y), y, x, 1), x, 0, 1);
fprintf('Tích phân cần tính là %f\n', I5);

f6 = y;
fprintf('\nf6 = %s\n', string(f6))
I6 = int(int(int(f6, z, x - y, x + y), y, x^2, x), x, 0, 1);
fprintf('Tích phân cần tính là %f\n', I6);