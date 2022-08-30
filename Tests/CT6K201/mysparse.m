function A = mysparse(n)
    A = eye(n);
    k = n - 1;
    h = 1;
    for i = 2:2:k
        M = mymatrix(h);
        A(i, i) = M(1, 1);
        A(i, i + 1) = M(1, 2);
        A(i + 1, i) = M(2, 1);
        A(i + 1, i + 1) = M(2, 2);
        h = h + 1;
    end
end