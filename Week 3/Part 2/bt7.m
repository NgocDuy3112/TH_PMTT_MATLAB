n_1 = 0;
n_2 = 0;
n_3 = 0;
n = 1;
check_1 = false;
check_2 = false;
check_3 = false;

while true
    f_a = 5 / (n * (n + 1));
    f_b = 1 / (n * (n + 3));
    f_c = n^2 / (n^2 + 1);
    if (and(f_a > 4, ~check_1))
        n_1 = n;
        check_1 = true;
    end
    if (and(f_b < 1/2, ~check_2))
        n_2 = n;
        check_2 = true;
    end
    if (and(f_c < 10, ~check_3))
        n_3 = n;
        check_3 = true;
    end
    if (and(check_1, and(check_2, check_3)))
        break
    end
    if (n == 10^6)
        disp('Khong tim thay ket qua')
        return
    end
    n = n + 1;
end
 