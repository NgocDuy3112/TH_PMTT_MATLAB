function GT = giaithua_while(n)
    GT = 1;
    if (n < 0)
        error('n phải là số tự nhiên')
    elseif (or(n == 0, n == 1))
        GT = 1;
    else
        i = 2;
        while (i <= n)
            GT = GT*i;
            i = i + 1;
        end
    end
end