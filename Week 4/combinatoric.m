function C = combinatoric(n, k)
    if (or(or(n ~= int32(n), k ~= int32(k)), or(n < 0, k < 0)))
        error('Các tham số nhập vào phải là số tự nhiên dương')
    end
    if (n < k)
        error('Tham số thứ 1 không được bé hơn tham số thứ 2')
    end
    C = factorial(n)/(factorial(k)*factorial(n - k));
end

function n = factorial(k)
    n = 1;
    if (k < 0)
        return
    elseif (or(k == 0, k == 1))
        n = 1;
    else
        for i = 2:k
            n = n * i;
        end
    end
end