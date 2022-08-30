function I = Tichphan(f, a, b)
    I = 0;
    N = 10;
    dx = (b - a)/N;
    for i = 1:N
        xi = a + (i - 1)*dx;
        xI = a + (i + 1 - 1)*dx;
        x_mid = (xi + xI)/2;
        I = I + subs(f, x_mid)*dx;
    end
end