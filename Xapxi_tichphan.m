function I = Xapxi_tichphan(f, a, b, N)
    I = 0;
    S = 0;
    s = symvar(f);
    n = length(s);
    if (n ~= 1)
        error('Hàm chỉ nhận hàm số 1 biến')
    end
    for i = 0:N - 1
        xi = a + (b - a)/N*i;
        xI = a + (b - a)/N*(i + 1);
        S = S + (xi + xI)*(subs(f, s, xi) + subs(f, s, xI));
    end
    I = S/2;
end