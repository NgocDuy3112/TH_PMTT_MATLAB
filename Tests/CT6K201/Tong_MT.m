function S = Tong_MT(A, B)
    [m1, n1] = size(A);
    [m2, n2] = size(B);
    if (or(m1 ~= m2, n1 ~= n2))
        error('Hai ma trận không cùng kích thước')
    end
    m = m1;
    n = n2;
    for i = 1:m
        for j = 1:n
            C(i, j) = A(i, j) + B(i, j);
        end
    end
end