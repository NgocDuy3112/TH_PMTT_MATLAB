syms x;
a = 0;

fa = x*sin(1/x);
fb = symfun(0, x);
lim_l1 = limit(fa, x, a, 'left');
lim_r1 = limit(fa, x, a, 'right');
f = subs(fb, x, a);
exist_1 = '';
if (or(lim_l1 ~= lim_r1, or(lim_l1 ~= f, lim_r1 ~= f)))
    exist_1 = ' không';
end
fprintf('Hàm số%s tồn tại đạo hàm tại x = %d\n', exist_1, a)

ga = x^2*sin(1/x);
gb = symfun(0, x);
lim_l2 = limit(ga, x, a, 'left');
lim_r2 = limit(ga, x, a, 'right');
g = subs(gb, x, a);
exist_2 = '';
if (or(lim_l2 ~= lim_r2, or(lim_l2 ~= g, lim_r2 ~= g)))
    exist_2 = ' không';
end
fprintf('Hàm số%s tồn tại đạo hàm tại x = %d\n', exist_2, a)