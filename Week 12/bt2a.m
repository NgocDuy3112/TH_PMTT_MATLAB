x = -5:0.01:5;
y = -5:0.01:5;

figure('Name', 'Bài tập 2', 'NumberTitle', 'off')
[X, Y] = meshgrid(x, y);
Z = X.^2.*Y.*exp(-X.^2-Y.^2);
meshc(X, Y, Z);
xlabel('x');
ylabel('y');
zlabel('z');
title('z = x^2ye^{-x^2-y^2}')