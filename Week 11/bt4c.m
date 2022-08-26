syms x;

a = 1;
fa = (x^2 - x)/(x - 1);
fb = symfun(1, x);
lim_l = limit(fa, x, 1, 'left');
lim_r = limit(fa, x, 1, 'right');
y = subs(fb, x, 1);
lt = '';
if (or(lim_l ~= lim_r, or(lim_l ~= y, lim_r ~= y)))
    lt = ' không';
end
fprintf('Hàm số%s liên tục tại x = %d\n', lt, a)

figure('Name', 'Bài tập 4c', 'NumberTitle', 'off')
fplot(@(t) (t.^2 - t)./(t - 1))
hold on
fplot(@(t) 1)
hold on
plot(a, y, 'o', 'MarkerFaceColor', 'black')
xlabel('x')
ylabel('y')
legend('f = (t^2 - t)/(t - 1), x ~= 1', 'f = 1, x = 1', 'a')