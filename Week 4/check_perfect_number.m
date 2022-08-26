function check = check_perfect_number(n)
    sum = 0;
    for i = 1:n/2
        if (mod(n, i) == 0)
            sum = sum + i;
        end
    end
    if (sum == n)
        check = true;
    else
        check = false;
    end
end