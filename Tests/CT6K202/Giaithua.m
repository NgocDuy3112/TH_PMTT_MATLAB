function P = Giaithua(n)
    P = 1;
    if (n ~= int32(n))
        error('n phải là số tự nhiên')
    end  
    if (n < 0)
        error('n phải là số tự nhiên')
    end
    if (or(n == 0, n == 1))
        P = 1;
    end
    if (n > 1)
        for i = 2:n
            P = P*i;
        end
    end
end