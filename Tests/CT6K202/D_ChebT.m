function dT = D_ChebT(n)
    T = ChebT(n);
    s = symvar(T);
    dT = diff(T, s, 1);
end