function P = DaThuc_Taylor(f, n, x0)
    s = symvar(f, 1);
    P = symfun(0, s);
    P = P + subs(f, s, x0);
    k = n - 1;
    for i = 1:k
        P = P + subs(diff(f, s, i), s, x0) * (s - x0)^i / factorial(i);
    end
end

function n = factorial(k)
    n = 1;
    if (or(k == 0, k == 1))
        n = 1;
    else
        for i = 2:k
            n = n * i;
        end
    end
end