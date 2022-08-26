n = input('Nhap so nguyen duong n: ');
sum = 0;
s = 0;

for i = 1:10
    for k = 1:n
        s = s + k;
    end
    sum = sum + s;
end

fprintf('Tong can tim la: %d\n', sum);