n = input('Nhap so nguyen duong: ');

switch n
    case {2, 3, 4, 5, 6, 7, 8, 9}
        fprintf('Bang cuu chuong cho so %d:\n', n)
        for k = 1:10
            fprintf('%d x %d = %d\n', n, k, n * k)
        end
    otherwise
        fprintf('Khong co bang cuu chuong cho so %d\n', n)
end