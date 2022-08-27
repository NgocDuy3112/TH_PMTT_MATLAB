function isPrime = check_prime(n)
    % Trường hợp n <= 1
    % n không là số nguyên tố
    if (n <= 1)
        isPrime = false;
        return
    end
    % Trường hợp n = 2 hoặc 3
    % n là số nguyên tố
    if (n <= 3)
        isPrime = true;
        return
    end
    % Nếu n chẵn hoặc chia hết cho 3
    % n không là số nguyên tố
    if (or(mod(n, 2) == 0, mod(n, 3) == 0))
        isPrime = false;
        return
    end
    % Sử dụng tính chất của số nguyên tố
    % Một số nguyên tố có thể được viết dưới dạng 6k + 1 hoặc 6k - 1
    % Ta tăng i mỗi lần lên 6
    % Số nguyên tố sẽ là bội số của 6 sai khác 1 đơn vị
    i = 5;
    while (i*i <= n)
        if (or(mod(n, i) == 0, mod(n, i + 2) == 0))
            isPrime = false;
            return
        end
        i = i + 6;
    end
    isPrime = true;
end