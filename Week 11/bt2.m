syms x;

f1 = x^6 + x^4 - 3*x^3 - 16*x;
f1_1 = diff(f1, x, 1);
f1_2 = diff(f1, x, 2);
fprintf('\nf(x) = %s\n', string(f1))
fprintf('Đạo hàm cấp 1 của f(x) là %s\n', string(f1_1))
fprintf('Đạo hàm cấp 2 của f(x) là %s\n', string(f1_2))

f2 = sqrt(x) + nthroot(x, 3) + x*sqrt(x);
f2_1 = diff(f2, x, 1);
f2_2 = diff(f2, x, 2);
fprintf('\nf(x) = %s\n', string(f2))
fprintf('Đạo hàm cấp 1 của f(x) là %s\n', string(f2_1))
fprintf('Đạo hàm cấp 2 của f(x) là %s\n', string(f2_2))

f3 = 2*x - 5*x^(3/4);
f3_1 = diff(f3, x, 1);
f3_2 = diff(f3, x, 2);
fprintf('\nf(x) = %s\n', string(f3))
fprintf('Đạo hàm cấp 1 của f(x) là %s\n', string(f3_1))
fprintf('Đạo hàm cấp 2 của f(x) là %s\n', string(f3_2))

f4 = sin(x) + log(x) + 1/x^2;
f4_1 = diff(f4, x, 1);
f4_2 = diff(f4, x, 2);
fprintf('\nf(x) = %s\n', string(f4))
fprintf('Đạo hàm cấp 1 của f(x) là %s\n', string(f4_1))
fprintf('Đạo hàm cấp 2 của f(x) là %s\n', string(f4_2))