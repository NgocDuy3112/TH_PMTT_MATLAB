function df = Daoham_1(f)
    syms x h;
    s = symvar(f);
    df = limit((subs(f, s, x + h) - subs(f, s, x)) / h, h, 0);
end