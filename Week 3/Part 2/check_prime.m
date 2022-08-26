function is_prime = check_prime(n)
    count = 0;
    if (n < 2)
        is_prime = false;
    else
        for i = 2:sqrt(n)
            if (mod(n, i) == 0)
                count = count + 1;
            end
        end
        if (count == 0)
            is_prime = true;
        else
            is_prime = false;
        end
    end    
end