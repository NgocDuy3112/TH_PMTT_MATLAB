day = 0;
year = input('Nhap mot nam bat ki: ');
month = input('Nhap mot thang bat ki: ');

while (or(month < 1, month > 12))
    fprintf('Thang khong hop le\n')
    month = input('Xin hay nhap lai: ');
end

switch(month)
    case {1, 3, 5, 7, 8, 10, 12}
        day = 31;
    case {4, 6, 9, 11}
        day = 30;
    otherwise
        if (or(mod(year, 400) == 0, and(mod(year, 4) == 0, mod(year, 100) ~=0)))
            day = 29;
        else
            day = 28;
        end
end

fprintf('Thang %d nam %d co %d ngay.\n', month, year, day)