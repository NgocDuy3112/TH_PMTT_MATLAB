syms x y;

f = exp(-x^2);
fprintf('\nf(x) = %s\n', string(f))
fprintf('Tich phân từ -oo dến +oo của hàm f là %f\n',...
    int(f, -Inf, Inf))

g = exp(-x^2-y^2);
fprintf('\ng(x, y) = %s\n', string(g))
fprintf('Tích phân trên miền [-oo; +oo] x [-oo; +oo] của hàm g là %f\n',...
    int(int(g, x, -Inf, Inf), y, -Inf, Inf))