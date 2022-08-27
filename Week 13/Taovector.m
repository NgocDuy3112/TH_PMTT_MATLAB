function V = Taovector(a, b)
    if (a == b)
        V = a;
    elseif (a < b)
        V = a:1:b;
    else
        V = a:-1:b;
    end
end