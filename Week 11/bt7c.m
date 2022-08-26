figure('Name', 'Bài tập 7c', 'NumberTitle', 'off')

syms k;
xk = 1/15^1.5 - 1/(k + 1)^1.5;
fprintf('\nxk = %s\n', string(xk))
for i = 1:20
    x = subs(xk, k, i);
    S = symsum(xk, k, 1, i);
    s = subs(S, k, i);
    fprintf('k = %d, xk = %.3f, sk = %.3f\n', i, x, s)
    plot(i, x, 'o', 'MarkerFaceColor', 'black')
    hold on
    plot(i, s, 'o', 'MarkerFaceColor', 'red')
    hold on
end
xlabel('xk')
ylabel('sk')
legend('xk', 'sk')

S_inf = symsum(xk, k, 1, Inf);
if (and(~isequal(class(S_inf), 'sym'), S_inf ~= Inf))
    fprintf('Chuỗi hội tụ tại giá trị %f\n', S_inf)
else
    fprintf('Chuỗi không hội tụ\n')
end