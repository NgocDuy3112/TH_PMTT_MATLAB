function [S, P, n2, index] = Xuly_matran(A, B)
    [r1, c1] = size(A);
    [r2, c2] = size(B);
    if (or(r1 ~= c1, or(r2 ~= c2, or(r1 ~= r2, c1 ~= c2))))
        error('Hai ma trận không thoả mãn điều kiện')
    end
    n = r1;
    n2 = 0;
    S = zeros(n);
    P = zeros(n);
    k = 1;
    for i = 1:n
        for j = 1:n
            if (abs(A(i, j) - B(i, j)) <= 10)
                S(i, j) = A(i, j) * B(i, j);
            else
                S(i, j) = 10 - abs(A(i, j) - B(i, j));
            end
            
            if (mod(B(i, j), 3) ~= 0)
                B(i, j) = round(-100 + (100 - (-100)) * rand(1));
                while (mod(B(i, j), 3) ~= 0)
                    B(i, j) = round(-100 + (100 - (-100)) * rand(1));
                end
            end
		P(i, j) = B(i, j);
            
            if (mod(A(i, j) - B(i, j), 2) == 0)
                n2 = n2 + 1;
                index(1, k) = i;
                index(2, k) = j;
		    k = k + 1;
            end
        end
    end
    
end