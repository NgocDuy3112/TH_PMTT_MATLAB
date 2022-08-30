function T = ChebT(n)
    syms x;
    C(1) = symfun(1, x);
    C(2) = x;
    for i = 3:(n + 1)
        C(i) = 2*x*C(i - 1) - C(i - 2);
    end
    T = C(n + 1);
end