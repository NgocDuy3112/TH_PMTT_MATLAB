function A_rg = Rutgon_Matran(A)
    for j = 2 : size(A, 1)
        for i = j : size(A, 1)
            S = 0;
            for k = 1 : size(A, 2)
                if A(i, k) == 0
                    S = S + 1;
                end
            end
            if S ~= size(A, 2)
                m = -A(i, j - 1)/A(j - 1, j - 1);
                A(i, :) = A(i, :) + m*A(j - 1, :);
            end
        end
    end
    A_rg = A;
end