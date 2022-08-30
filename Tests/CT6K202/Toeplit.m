function T = Toeplit(A)
    s = 0;
    [m, n] = size(A);
    if (m == 1)
        s = n;
    end
    if (n == 1)
        s = m;
    end
    T = zeros(s);
    k = s;
    for i = 1:s
        T(i, i:end) = A(1:k);
        k = k - 1;
    end
    T = T';
    k = s;
    for i = 1:s
        T(i, i:end) = A(1:k);
        k = k - 1;
    end
end