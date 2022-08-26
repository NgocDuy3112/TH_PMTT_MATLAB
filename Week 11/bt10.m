syms x;

f1 = exp(x);
fprintf('\nf = %s\n', string(f1))
I1 = int(f1, x, 0, pi);
fprintf('Tích phân hàm f từ 0 dến pi là %.3f\n', I1)

f2 = sin(x)/x;
fprintf('\nf = %s\n', string(f2))
I2 = int(f2, x, 0, 1);
fprintf('Tích phân hàm f từ 0 đến 1 là %.3f\n', I2)

f3 = 2^x;
fprintf('\nf = %s\n', string(f3))
I3 = int(f3, x, 0, 2);
fprintf('Tích phân hàm f từ 0 đến 2 là %.3f\n', I3)

f4 = 1/(x^2 + 2);
fprintf('\nf = %s\n', string(f4))
I4 = int(f4, x, 0, 1);
fprintf('Tích phân hàm f từ 0 đến 1 là %.3f\n', I4)