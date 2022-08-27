syms t;

s = t^3 - 3*t;
v = diff(s, 1);
a = diff(v, 1);
t0 = solve(v == 0, t);
t0 = t0(t0 > 0);

fprintf('Vận tốc của chuyển động là %s (m/s)\n', string(v))
fprintf('Gia tốc của chuyển động là %s (m/s^2)\n', string(a))
fprintf('Gia tốc chuyển động sau 2 giây là %f (m/s^2)\n', subs(a, t, 2))
fprintf('Gia tốc chuyển động khi vận tốc bằng 0 là %f (m/s^2)\n', subs(a, t, t0))