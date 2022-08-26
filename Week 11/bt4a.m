syms x;

a = 2;
f = log(abs(x - 2));
lim_l = limit(f, x, a, 'left');
lim_r = limit(f, x, 1, 'right');
y = subs(f, x, a);
lt = '';
if (or(lim_l ~= lim_r, or(lim_r ~= y, lim_l ~= y)))
    lt = ' không';
end
fprintf('Hàm số%s liên tục tại a = %d\n', lt, a)

figure('Name', 'Bài tập 4a', 'NumberTitle', 'off')
fplot(@(t) log(abs(t-2)))
hold on
plot(a, y, 'o', 'MarkerFaceColor', 'black')
xlabel('x')
ylabel('y')
legend('f', 'a')