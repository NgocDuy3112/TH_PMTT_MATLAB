figure('Name', 'Bài tập 8', 'NumberTitle', 'off')

syms x;
y = 2*x^3 + 3*x^2 - 12*x + 1;
y1 = diff(y, x, 1);
s = solve(y1 == 0, x);
fplot(@(t) 2*t.^3 + 3*t.^2 - 12*t + 1)
hold on
n = length(s);
for i = 1:n
    u = subs(y, x, s(i));
    plot(s(i), u, 'o', 'MarkerFaceColor', 'black')
    hold on
    fplot(@(t) u)
    hold on
end
xlabel('x')
ylabel('y')