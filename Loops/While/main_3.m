n = input('Nhap mot so nguyen duong bat ki: ');

while (n ~= 1)
    if (mod(n, 2) == 0)
        n = n / 2;
    else
        n = n + 1;
    end
    disp(n)
end

