function l = laplace_operator(f)
    s = symvar(f);
    l = symfun(0, s);
    n = length(s);
    for i = 1:n
        l = l + diff(f, s(i), 2)^2;
    end
end