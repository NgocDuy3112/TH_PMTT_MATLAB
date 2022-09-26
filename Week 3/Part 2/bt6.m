x = input('Nhap mot so thuc x: ');

% Dung vong lap for
n_exp_1_for = 0;
n_exp_2_for = 0;
check_exp_1_for = false;
check_exp_2_for = false;
n_sin_1_for = 0;
n_sin_2_for = 0;
check_sin_1_for = false;
check_sin_2_for = false;
n_cos_1_for = 0;
n_cos_2_for = 0;
check_cos_1_for = false;
check_cos_2_for = false;

for i = 0:10^12
    error_exp_for = abs(exp_maclaurin(x, i) - exp(x));
    error_sin_for = abs(sin_maclaurin(x, i) - sin(x));
    error_cos_for = abs(cos_maclaurin(x, i) - cos(x));
    if (and(error_exp_for < 10^-6, ~check_exp_1_for))
        n_exp_1_for = i;
        check_exp_1_for = true;
    end
    if (and(error_sin_for < 10^-6, ~check_sin_1_for))
        n_sin_1_for = i;
        check_sin_1_for = true;
    end
    if (and(error_cos_for < 10^-6, ~check_cos_1_for))
        n_cos_1_for = i;
        check_cos_1_for = true;
    end
    if (and(error_exp_for < 10^-12, ~check_exp_2_for))
        n_exp_2_for = i;
        check_exp_2_for = true;
    end
    if (and(error_sin_for < 10^-12, ~check_sin_2_for))
        n_sin_2_for = i;
        check_sin_2_for = true;
    end
    if (and(error_cos_for < 10^-12, ~check_cos_2_for))
        n_cos_2_for = i;
        check_cos_2_for = true;
    end
    if (and(check_exp_2_for, and(check_sin_2_for, check_cos_2_for)))
        break
    end
end
fprintf('============Su dung vong lap for============\n') 
fprintf('Voi n = %d, sai so cua ham mu nho hon 10^-6\n', n_exp_1_for)
fprintf('Voi n = %d, sai so cua ham mu nho hon 10^-12\n', n_exp_2_for)
fprintf('Voi n = %d, sai so cua ham sin nho hon 10^-6\n', n_sin_1_for)
fprintf('Voi n = %d, sai so cua ham sin nho hon 10^-12\n', n_sin_2_for)
fprintf('Voi n = %d, sai so cua ham cos nho hon 10^-6\n', n_cos_1_for)
fprintf('Voi n = %d, sai so cua ham cos nho hon 10^-12\n', n_cos_2_for)

% Dung vong lap while
n_exp_1_while = 0;
n_exp_2_while = 0;
check_exp_1_while = false;
check_exp_2_while = false;
n_sin_1_while = 0;
n_sin_2_while = 0;
check_sin_1_while = false;
check_sin_2_while = false;
n_cos_1_while = 0;
n_cos_2_while = 0;
check_cos_1_while = false;
check_cos_2_while = false;
n_start = 0;

while true
    error_exp_while = abs(exp_maclaurin(x, n_start) - exp(x));
    error_sin_while = abs(sin_maclaurin(x, n_start) - sin(x));
    error_cos_while = abs(cos_maclaurin(x, n_start) - cos(x));
    if (and(error_exp_while < 10^-6, ~check_exp_1_while))
        n_exp_1_while = n_start;
        check_exp_1_while = true;
    end
    if (and(error_sin_while < 10^-6, ~check_sin_1_while))
        n_sin_1_while = n_start;
        check_sin_1_while = true;
    end
    if (and(error_cos_while < 10^-6, ~check_cos_1_while))
        n_cos_1_while = n_start;
        check_cos_1_while = true;
    end
    if (and(error_exp_while < 10^-12, ~check_exp_2_while))
        n_exp_2_while = n_start;
        check_exp_2_while = true;
    end
    if (and(error_sin_while < 10^-12, ~check_sin_2_while))
        n_sin_2_while = n_start;
        check_sin_2_while = true;
    end
    if (and(error_cos_while < 10^-12, ~check_cos_2_while))
        n_cos_2_while = n_start;
        check_cos_2_while = true;
    end
    if (and(check_exp_2_while, and(check_sin_2_while, check_cos_2_while)))
        break
    end
    n_start = n_start + 1;
end
fprintf('============Su dung vong lap while============\n') 
fprintf('Voi n = %d, sai so cua ham mu nho hon 10^-6\n', n_exp_1_while)
fprintf('Voi n = %d, sai so cua ham mu nho hon 10^-12\n', n_exp_2_while)
fprintf('Voi n = %d, sai so cua ham sin nho hon 10^-6\n', n_sin_1_while)
fprintf('Voi n = %d, sai so cua ham sin nho hon 10^-12\n', n_sin_2_while)
fprintf('Voi n = %d, sai so cua ham cos nho hon 10^-6\n', n_cos_1_while)
fprintf('Voi n = %d, sai so cua ham cos nho hon 10^-12\n', n_cos_2_while)
