syms n;

a1 = sqrt(n - 3);
fprintf('\nan = %s\n', string(a1))
for i = 0:4
    f1 = subs(a1, n, i);
    fprintf('a%d = %f\n', i, f1)
end
lim_1 = limit(a1, n, inf);
fprintf('lim an = %f\n', lim_1)

a2 = (n + 1)/(3*n - 1);
fprintf('\nan = %s\n', string(a1))
for i = 0:4
    f2 = subs(a2, n, i);
    fprintf('a%d = %f\n', i, f2)
end
lim_2 = limit(a2, n, inf);
fprintf('lim an = %f\n', lim_2)

a3 = cos(n*pi/6);
fprintf('\nan = %s\n', string(a3))
for i = 0:4
    f3 = subs(a2, n, i);
    fprintf('a%d = %f\n', i, f3)
end
lim_3 = limit(a3, n, inf);
fprintf('lim an = %f\n', lim_3)

a = 3;
fprintf('\na1 = %d\n', a)
fprintf('a(n + 1) = 2*an - 1\n')
fprintf('a1 = %d\n', a)
for i = 2:5
    a = 2*a - 1;
    fprintf('a%d = %d\n', i, a)
end
if (2*a - 1 > a)
    fprintf('lim an = inf\n')
end

