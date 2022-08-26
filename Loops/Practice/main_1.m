n = input('Nhap mot so nguyen duong bat ki: ');
count = 0;

if (n < 2)
    fprintf('%d khong phai la so nguyen to.\n', n)
else
    for i = 2:sqrt(n)
        if (mod(n, i) == 0)
            count = count + 1;
        end
    end
    if (count == 0)
        fprintf('%d la so nguyen to.\n', n)
    else
        fprintf('%d khong phai la so nguyen to.\n', n)
    end
end    