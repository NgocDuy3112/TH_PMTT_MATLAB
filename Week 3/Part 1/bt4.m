s = input('Nhap so km di duoc: ');
bill = 0;

if (s <= 1)
    bill = 15000;
elseif (and(s >= 2, s <= 5))
    bill = 15000 + 13500 * (s - 1);
else
    bill = 15000 + 13500 * 4 + 11000 * (s - 5);
    if (s > 120)
        bill = bill * 0.9;
    end
end

fprintf('So tien phai tra la %d\n', bill)