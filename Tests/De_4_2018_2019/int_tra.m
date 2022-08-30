function I = int_tra(a, b, n)
    syms x;
    f = x^3 - 4*x + 1;
    dx = (b - a)/n;
    S = 0;
    for i = 1:n
        xi = a + (i - 1)*dx;
        xI = a + i*dx;
        S = S + subs(f, x, xi) + subs(f, x, xI);
    end
    I = S*dx/2;
end