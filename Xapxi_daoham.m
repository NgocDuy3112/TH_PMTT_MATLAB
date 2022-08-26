function df = Xapxi_daoham(f, n, x0, h)
    df = 0;
    s = symvar(f);
    N = length(s);
    if (N ~= 1)
        error('Hàm chỉ nhận các hàm số 1 biến')
    end
    switch(n)
        case 1
            df = double((subs(f, s, x0 + h) - subs(f, s, x0 - h))/(2 * h));
        case 2
            df = double((subs(f, s, x0 + h) - 2*subs(f, s, x0) + subs(f, s, x0 - h))/h^2);
    end
end