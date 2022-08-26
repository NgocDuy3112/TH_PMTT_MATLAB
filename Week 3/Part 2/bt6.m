x = input('Nhap mot so thuc x: ');
n_exp_1 = 0;
n_exp_2 = 0;
check_exp_1 = false;
check_exp_2 = false;
n_sin_1 = 0;
n_sin_2 = 0;
check_sin_1 = false;
check_sin_2 = false;
n_cos_1 = 0;
n_cos_2 = 0;
check_cos_1 = false;
check_cos_2 = false;
n_start = 0;

while true
    error_exp = abs(exp_maclaurin(x, n_start) - exp(x));
    error_sin = abs(sin_maclaurin(x, n_start) - sin(x));
    error_cos = abs(cos_maclaurin(x, n_start) - cos(x));
    if (and(error_exp < 10^-6, ~check_exp_1))
        n_exp_1 = n_start;
        check_exp_1 = true;
    end
    if (and(error_sin < 10^-6, ~check_sin_1))
        n_sin_1 = n_start;
        check_sin_1 = true;
    end
    if (and(error_cos < 10^-6, ~check_cos_1))
        n_cos_1 = n_start;
        check_cos_1 = true;
    end
    if (and(error_exp < 10^-12, ~check_exp_2))
        n_exp_2 = n_start;
        check_exp_2 = true;
    end
    if (and(error_sin < 10^-12, ~check_sin_2))
        n_sin_2 = n_start;
        check_sin_2 = true;
    end
    if (and(error_cos < 10^-12, ~check_cos_2))
        n_cos_2 = n_start;
        check_cos_2 = true;
    end
    if (and(check_exp_2, and(check_sin_2, check_cos_2)))
        break
    end
    n_start = n_start + 1;
end
    
fprintf('Voi n = %d, sai so cua ham mu nho hon 10^-6\n', n_exp_1)
fprintf('Voi n = %d, sai so cua ham mu nho hon 10^-12\n', n_exp_2)
fprintf('Voi n = %d, sai so cua ham sin nho hon 10^-6\n', n_sin_1)
fprintf('Voi n = %d, sai so cua ham sin nho hon 10^-12\n', n_sin_2)
fprintf('Voi n = %d, sai so cua ham cos nho hon 10^-6\n', n_cos_1)
fprintf('Voi n = %d, sai so cua ham cos nho hon 10^-12\n', n_cos_2)