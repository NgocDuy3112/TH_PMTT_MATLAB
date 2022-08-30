function P = DaThuc_Taylor(f, n, x0)
    s = symvar(f);
    N = length(s);
    if (N ~= 1)
        error('Hàm số chỉ được phép có đúng 1 biến')
    end
    P = symfun(subs(f, s, x0), s);
    for i = 1:n
        P = P + subs(diff(f, s, i), s, x0)/Giaithua(i)*(s - x0)^i;
    end
end