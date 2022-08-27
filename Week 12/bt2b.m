figure('Name', 'Bài tập 2b', 'NumberTitle', 'off')
t = 0:0.001:5;

x = sin(4*t);
y = cos(4*t);
plot(x, y);
xlabel('x');
ylabel('y');
axis square;
title('x = sin4t, y = cos4t')