syms x;
N = [2 4 10 20];

f1 = exp(x);
fprintf('\nf = %s\n', string(f1))
I1 = int(f1, x, 0, pi);
fprintf('Tích phân hàm f từ 0 dến pi là %.3f\n', I1)
for i = 1:4
    fprintf('Xấp xỉ tích phân hàm f từ 0 dến pi với N = %d là %.3f\n',...
        N(i), Xapxi_tichphan(f1, 0, pi, N(i)))
end

f2 = sin(x)/x;
fprintf('\nf = %s\n', string(f2))
I2 = int(f2, x, 0, 1);
fprintf('Tích phân hàm f từ 0 đến 1 là %.3f\n', I2)
for i = 1:4
    fprintf('Xấp xỉ tích phân hàm f từ 0 dến 1 với N = %d là %.3f\n',...
        N(i), Xapxi_tichphan(f2, 0, 1, N(i)))
end

f3 = 2^x;
fprintf('\nf = %s\n', string(f3))
I3 = int(f3, x, 0, 2);
fprintf('Tích phân hàm f từ 0 đến 2 là %.3f\n', I3)
for i = 1:4
    fprintf('Xấp xỉ tích phân hàm f từ 0 dến 2 với N = %d là %.3f\n',...
        N(i), Xapxi_tichphan(f3, 0, 2, N(i)))
end

f4 = 1/(x^2 + 2);
fprintf('\nf = %s\n', string(f4))
I4 = int(f4, x, 0, 1);
fprintf('Tích phân hàm f từ 0 đến 1 là %.3f\n', I4)
for i = 1:4
    fprintf('Xấp xỉ tích phân hàm f từ 0 dến 1 với N = %d là %.3f\n',...
        N(i), Xapxi_tichphan(f4, 0, 1, N(i)))
end