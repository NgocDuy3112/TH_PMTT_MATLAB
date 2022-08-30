function [O, Q, n3, ind] = Xuly_matran(A, B)
    [r1, c1] = size(A);
    [r2, c2] = size(B);
    if (or(r1 ~= c1, or(r2 ~= c2, or(r1 ~= r2, c1 ~= c2))))
        error('Hai ma trận không thoả mãn điều kiện')
    end
    n = r1;
    O = zeros(n);
    Q = zeros(n);
    n3 = 0;
    k = 1;
    for i = 1:n
        for j = 1:n
            if (mod((i + j), 2) == 0)
                O(i, j) = B(i, j);
            else
                O(i, j) = 10^3;
            end
            
            if (A(i, j) <= 0)
                A(i, j) = round(-100 + (100 - (-100)) * rand(1));
                while (abs(A(i, j) - B(i, j)) < 5)
                    A(i, j) = round(-100 + (100 - (-100)) * rand(1));
                end
            end
            Q(i, j) = A(i, j);
            
            if (and(mod(A(i, j), 3) == 0, mod(B(i, j), 3) ~= 0))
                n3 = n3 + 1;
                ind(1, k) = i;
                ind(2, k) = j;
                k = k + 1;
            end
        end
    end
end