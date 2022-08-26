figure('Name', 'Bài tập 7a', 'NumberTitle', 'off')

syms k;
xk = 12/(-5)^k;
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
    fprintf('Chuỗi không hội tụ')
end