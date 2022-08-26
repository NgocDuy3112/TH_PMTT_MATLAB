figure('Name', 'Bài tập 5a', 'NumberTitle', 'off')

fplot(@(x) 1/(1 + exp(1/x)))
xlabel('x')
ylabel('y')

syms x;
f = 1/(1 + exp(1/x));
y = 0;
for i = -5:5
    if (limit(f, x, i) == Inf)
        y = i;
    end
end
fprintf('Điểm bất liên tục của hàm số này là %0.0f\n', y)