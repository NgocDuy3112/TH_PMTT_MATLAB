function GT = giaithua_for(n)
    GT = 1;
    if (n < 0)
        error('n phải là số tự nhiên')
    elseif (or(n == 0, n == 1))
        GT = 1;
    else
        for i = 2:n
            GT = GT*i;
        end
    end
end