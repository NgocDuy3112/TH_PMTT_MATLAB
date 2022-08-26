function res = combinatoric(n, k)
    res = fact(n) / (fact(k) * fact(n - k));
end

function m = fact(n)
    m = 1;
    if (n == 0)
        m = 1;
    else
        for i = 2:n
            m = m * i;
        end
    end
end 