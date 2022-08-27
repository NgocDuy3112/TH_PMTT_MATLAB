figure('Name', 'Bài tập 4a', 'NumberTitle', 'off')

syms n;
an = (-1)^n*(n + 1)/n;
for i = 1:10000
    plot(i, subs(an, n, i), 'o', 'MarkerFaceColor', 'black')
    hold on
end
l = limit(an, n, Inf);
if (and(l ~= Inf, ~isnan(l)))
    fprintf('Dãy hội tụ về giá trị %f\n', l)
else
    fprintf('Dãy phân kì\n')
end