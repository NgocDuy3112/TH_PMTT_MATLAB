n = input('Nhap so nguyen n: ');
k = 1;
sum = 0;

while (k <= n)
    f = 1.0 / k;
    sum = sum + f;
    k = k + 1;
end

fprintf('Tong can tim la: %.5f\n', sum)