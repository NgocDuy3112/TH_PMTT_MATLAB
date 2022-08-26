function print_matrix(A)
    m = size(A, 1);
    fprintf('[')
    fprintf('%g, ', A(1, 1:end-1))
    fprintf('%g\n', A(1, end))
    for i = 2 : m - 1
        fprintf(' ')
        fprintf('%g, ', A(i, 1:end-1))
        fprintf('%g\n', A(i, end))
    end
    fprintf(' ')
    fprintf('%g, ', A(m, 1:end-1))
    fprintf('%g]\n', A(m, end))
end