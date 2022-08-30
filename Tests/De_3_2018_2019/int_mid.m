function I = int_mid(a, b, n)
    I = 0;
    syms x;
    f = x^2 + 7*x - 3;
    dx = (b - a)/n;
    for i = 1:n
        xi = a + (i - 1)*dx;
        xI = a + i * dx;
        x_mid = (xi + xI)/2;
        I = I + subs(f, x, x_mid)*dx;
    end
end