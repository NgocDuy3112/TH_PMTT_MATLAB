function n = Giai_thua(k)
    if (k < 0)
        n = NaN;
    elseif (or(k == 0, k == 1))
        n = 1;
    else
        for i = 2:k
            n = n*i;
        end
    end
end