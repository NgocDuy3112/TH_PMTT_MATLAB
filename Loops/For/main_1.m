n = input('Nhap so nguyen duong n: ');
res = 1;

while (n < 0)
    fprintf('So ban nhap la so nguyen am.\n')
    n = input('Xin moi ban nhap lai: ');
end

if (n == 0)
    res = 1;
else
    for i = 1:n
        res = res * n;
    end

fprintf('%d! = %d\n', n, res)
end