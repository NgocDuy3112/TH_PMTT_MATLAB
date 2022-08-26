function C = Tong_Matran(A, B)
    [m1, n1] = size(A);
    [m2, n2] = size(B);
    if (or(m1 ~= m2, n1 ~= n2))
        error('Hai ma trận không cùng kích thước\n')
    end
    for i = 1:m1
        for j = 1:n1
            C(i, j) = A(i, j) + B(i, j);
        end
    end
end