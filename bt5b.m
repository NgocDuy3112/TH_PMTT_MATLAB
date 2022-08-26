figure('Name', 'Bài tập 5b', 'NumberTitle', 'off')

fplot(@(x) log(tan(x).^2))
xlabel('x')
ylabel('y')

syms x;
f = log(tan(x)^2);
y = 0;
for i = -5:5
    if (abs(limit(f, x, i)) == Inf)
        y = i + k * pi;
    end
end
for j = -2 : 2
    fprintf('Diem bat lien tuc cua ham so nay la %f\n', double(subs(y, j)));
end