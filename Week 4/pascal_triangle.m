function pascal_triangle(n)
    for line = 0:n
        fprintf('n = %d', line)
        for i = 0:(n - line - 1)
            fprintf('  ')
        end
        for i = 0:line
            fprintf('  %d  ', combinatoric(line, i))
        end
        fprintf('\n')
    end
end