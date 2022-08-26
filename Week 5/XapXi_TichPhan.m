function I = XapXi_TichPhan(f, a, b, n)
    s = symvar(f);
    n_s = length(s);
    if (n_s == 1)
        I = 0;
        dx = (b - a)/n;
        for i = 1:n
            xi = a + (i - 1)*dx;
            xI = a + (i + 1 - 1)*dx;
            x_mid = (xi + xI)/2;
            I = I + subs(f, s, x_mid) * dx;
        end
    else
        error('Hàm chỉ nhận hàm số có đúng 1 biến\n')
    end
end