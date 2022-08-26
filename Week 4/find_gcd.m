function gcd = find_gcd(a, b)
    if (or(or(a ~= int32(a), b ~= int32(b)), or(a < 0, b < 0)))
        error('Các tham số nhập vào phải là số tự nhiên dương')
    end
    gcd = 1;
    if (a == 0)
        gcd = b;
    end
    if (b == 0)
        gcd = a;
    end
    if (a == b)
        gcd = a;
    elseif (a > b)
        gcd = find_gcd(a - b, b);
    else
        gcd = find_gcd(a, b - a);
    end
end