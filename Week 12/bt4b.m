figure('Name', 'Bài tập 4b', 'NumberTitle', 'off')

syms n;
an = sin(n)/sqrt(n);
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