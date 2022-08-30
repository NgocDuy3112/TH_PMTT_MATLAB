function ddf = Daoham_2(f)
    syms x h;
    s = symvar(f);
    df = Daoham_1(f);
    ddf = limit((subs(df, s, x + h) - subs(df, s, x)) / h, h, 0);
end