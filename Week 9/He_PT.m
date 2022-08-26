function x = He_PT(A, b)
    if (size(A, 1) ~= size(A, 2))
        error('Ma trận A không phải ma trận vuông')
    end
    n = size(A, 1);
    x = zeros(n, 1);
    d = zeros(n, 1);
    D = det(A);
    for i = 1:n
        M = A;
        M(:, i) = b;
        d(i) = det(M);
    end
    if (D == 0)
        if (any(d ~= 0))
            x(1:n) = NaN;
        else
            x(1:n) = Inf;
        end
    else
        for i = 1:n
            x(i) = d(i)/D;
        end
    end
end