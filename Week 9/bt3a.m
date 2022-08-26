figure('Name', 'Bài tập 3a', 'NumberTitle', 'off')
syms x k;
x1 = linspace(-2 * pi, 2 * pi);
f1 = x1 .* sin(x1);
g1 = x1 .* cos(x1);
plot(x1, f1, x1, g1);
f = x * sin(x);
g = x * cos(x);
y = solve(f == g, x);
y(2) = y(2) + k * pi;
i = 0;
j = 0;
while double(subs(y(2), i)) > -2 * pi
    i = i - 1;
end
while double(subs(y(2), j)) < 2 * pi
    j = j + 1;
end
p = 0;
for h = i + 1 : j - 1
    str = strcat('x', num2str(p));
    if double(subs(y(2), h) < double(y(1)) && double(subs(y(2), h + 1) > double(y(1))))
        text(double(subs(y(2), h)), double(subs(f, subs(y(2), h))), str);
        p = p + 1;
        str = strcat('x', num2str(p));
        text(double(y(1)), double(subs(f, y(1))), str);
    else
        text(double(subs(y(2), h)), double(subs(f, subs(y(2), h))), str);
    end;
    p = p + 1;
end;