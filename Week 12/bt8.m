figure('Name', 'Bài tập 8', 'NumberTitle', 'off')

syms x;
y1 = sqrt(x^2*(x + 3));
y2 = -sqrt(x^2*(x + 3));
fimplicit(@(u, v) v^2 - u^2.*(u + 3))
hold on
xlabel('x')
ylabel('y')
X = solve(y1 == y2, x);
n = length(X);
for i = 1:n
    Y = subs(y1, x, X(i));
    plot(X(i), Y, 'o', 'MarkerFaceColor', 'black')
    hold on
end
S = int(abs(y2 - y1), x, min(X), max(X));
fprintf('Diện tích hình vòng cung là %f\n', S)