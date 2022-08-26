function A_l = Matran_TG_Duoi(A)
    [m, n] = size(A);
    if (m ~= n)
        error('Ma trận đầu vào không là ma trận vuông\n')
    end
    for i = 1:m
        for j = 1:n
            if (i < j)
                A_l(i, j) = 0;
            else
                A_l(i, j) = A(i, j);
            end
        end
    end
end