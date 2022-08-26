function J = jacobi_matrix(u)
    warning('off');
    s = symvar(u);
    n = length(s);
    for i = 1:n
        J(:, i) = diff(u, s(i));
    end
end