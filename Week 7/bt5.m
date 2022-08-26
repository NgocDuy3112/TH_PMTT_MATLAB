syms x;
y = x.^3 - 3*x;
y_1 = diff(y);
y_2 = diff(y, 2);
s = solve(y_1);
n = length(s);
disp(x);

figure('Name', 'Bài tập 5', 'NumberTitle', 'off',...
    'units','normalized','outerposition',[0 0 1 1])
p = gobjects(1, 4);
p(1) = fplot(y, [-10 10], 'black');
hold on;
p(2) = fplot(y_1, [-10 10], 'b');
hold on;
p(3) = fplot(y_2, [-10 10], 'g');
hold on;
for k = 1:n
    p(4) = plot(s(k), double(subs(y, x, s(k))), 'r o');
    hold on;
end
title('Hàm số y = x^3 - 3x, đạo hàm cấp 1 và cấp 2');
xlabel('x');
ylabel('y');
legend(p, 'f(x) = x^3 - 3x', 'f''(x) = 3x^2 - 3',...
    'f''''(x) = 6x', 'Điểm cực trị');