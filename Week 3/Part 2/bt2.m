x = input('Nhap mot vecto kem cap ngoac vuong: ');
n = length(x);
sum_even = 0;
sum_odd = 0;
sum_prime_even = 0;
sum_prime_odd = 0;
sum_square_nums = 0;

for i = 1:n
    if (mod(x(i), 2) == 0)
        sum_even = sum_even + x(i);
        if (check_prime(x(i)))
            sum_prime_even = sum_prime_even + x(i);
        end
    end
    if (mod(x(i), 2) ~= 0)
        sum_odd = sum_odd + x(i);
        if (check_prime(x(i)))
            sum_prime_odd = sum_prime_odd + x(i);
        end
    end
    if (check_square(x(i)))
        sum_square_nums = sum_square_nums + x(i);
    end
end

disp('Vecto vua nhap co: ')
fprintf('Tong cac so chan la %d\n', sum_even)
fprintf('Tong cac so le la %d\n', sum_odd)
fprintf('Tong cac so nguyen to chan la %d\n', sum_prime_even)
fprintf('Tong cac so nguyen to le la %d\n', sum_prime_odd)
fprintf('Tong cac so chinh phuong la %d\n', sum_square_nums)