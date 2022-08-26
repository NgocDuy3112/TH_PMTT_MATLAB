syms x;

a = 0;
fa = exp(x);
fb = x^2;
lim_l = limit(fa, x, a, 'left');
lim_r = limit(fb, x, a, 'right');
y = subs(fb, x, a);
lt2 = '';
if (or(lim_l ~= lim_r, or(lim_r ~= y, lim_l ~= y)))
    lt = ' không';
end
fprintf('Hàm số%s liên tục tại a = %d\n', lt, a)

figure('Name', 'Bài tập 4b', 'NumberTitle', 'off')
fplot(@(t) exp(t))
hold on
fplot(@(t) t.^2)
hold on
plot(a, y, 'o', 'MarkerFaceColor', 'black')
xlabel('x')
ylabel('y')
legend('f = e^x, x < 0', 'f = x^2, x >= 0', 'a')