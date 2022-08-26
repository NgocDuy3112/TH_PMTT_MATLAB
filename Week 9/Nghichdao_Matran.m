function B = Nghichdao_Matran(A)
    if (size(A, 1) ~= size(A, 2))
        error('Ma trận đầu vào phải là ma trận vuông')
    end
    if (det(A) == 0)
        error('Ma trận đầu vào không khả nghịch')
    end
    n = size(A, 1);
    B = eye(n);
    for i = 1 : n
        for j = 1 : n
            if i == j
                B(j, :) = B(j, :) / A(j, i);
                A(j, :) = A(j, :) / A(j, i);
            else
                m = -A(j, i)/A(i, i);
                B(j, :) = B(j, :) + m * B(i, :);
                A(j, :) = A(j, :) + m * A(i, :);
            end
        end
    end
end