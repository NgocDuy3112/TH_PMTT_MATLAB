function print_vector(x)
    fprintf('[')
    fprintf('%g, ', x(1:end-1))
    fprintf('%g]\n', x(end))
end