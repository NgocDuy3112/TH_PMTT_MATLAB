syms x;

a = 0;
fa = cos(pi*x);
fb = symfun(0, x);
fc = 1 - x^2;

lim_l = limit(fa, x, a, 'left');
lim_r = limit(fc, x, a, 'right');
y = subs(fb, x, 0);
lt = '';
if (or(lim_l ~= lim_r, or(lim_l ~= y, lim_r ~= y)))
    lt = ' không';
end
fprintf('Hàm số%s liên tục tại x = %d\n', lt, a)

figure('Name', 'Bài tập 4d', 'NumberTitle', 'off')
fplot(@(t) cos(pi*t))
hold on
fplot(@(t) 0)
hold on
fplot(@(t) 1 - t.^2)
hold on
plot(a, y, 'o', 'MarkerFaceColor', 'black')
xlabel('x')
ylabel('y')
legend('f = cos(pi*t), x < 0', 'f = 0, x = 0', 'f = 1 - x^2, x > 0', 'a')