function x = TT_Gauss_Seidel(A, b, x0, TOL, maxit)
    k = 1;
    [m, n] = size(A);
    if (m ~= n)
        error('A không phải là ma trận vuông')
    end
    while (k <= maxit)
        for i = 1:n
            s1 = 0;
            s2 = 0;
            for j = 1:(i - 1)
                s1 = s1 + A(i, j)*x0(j);
            end
            for j = (i + 1):n
                s2 = s2 + A(i, j)*x0(j);
            end
            x(i) = 1/A(i, i)*(-s1 - s2 + b(i));
        end
        if (norm((x - x0), Inf) < TOL)
            break;
        end
        k = k + 1;
        x0 = x;
    end
    if (k > maxit)
        error('Vượt quá số lần lặp')
    end
end