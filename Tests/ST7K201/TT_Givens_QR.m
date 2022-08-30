function [Q, R] = TT_Givens_QR(A)
    R = A;
    [m, n] = size(A);
    if (m ~= n)
        error('Ma trận phải là một ma trận vuông')
    end
    for j = 1:n
        for i = m:-1:(j + 1)
            [c, s] = givens(R(i-1, j), R(i, j));
            R(i - 1:i, j:n) = [c s; -s c]'*R(i - 1:i, j:n);
        end
    end
    Q = (R*A^(-1))';
end