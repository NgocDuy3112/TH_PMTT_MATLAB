figure('Name', 'Bài tập 8', 'NumberTitle', 'off')
sgtitle('Đồ thị elip x^2/4 + y^2/9 = 1')

t = linspace(0, 2 * pi, 500);
subplot(2, 2, 1);

x = 2 * sin(t);
y = 3 * cos(t);
plot(x, y, '.b');
title('Elip axis tight');
axis tight;

subplot(2, 2, 2);
x = 2 * sin(t);
y = 3 * cos(t);
plot(x, y, '-r');
title('Elip axis square');
axis square;

subplot(2, 2, 3);
x = 2 * sin(t);
y = 3 * cos(t);
plot(x, y, '>y');
title('Elip axis normal');
axis normal;

subplot(2, 2, 4);
x = 2 * sin(t);
y = 3 * cos(t);
plot(x, y, '<g');
title('Elip axis equal');
axis equal;