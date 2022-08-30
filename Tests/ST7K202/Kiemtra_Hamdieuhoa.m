function checked = Kiemtra_Hamdieuhoa(f)
    s = symvar(f);
    n = length(s);
    rhs = symfun(0, s);
    lhs = symfun(0, s);
    for i = 1:n
        lhs = lhs + diff(f, s(i), 2);
    end
    if (isequal(lhs, rhs))
        checked = true;
    else
        checked = false;
    end
end