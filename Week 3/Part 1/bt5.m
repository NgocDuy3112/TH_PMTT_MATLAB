L = input('Nhap chieu dai theo don vi met: ');
unit = input('Nhap don vi quy doi: ');
L1 = 0;

switch unit
    case 'km'
        L1 = L / 1000;
    case 'hm'
        L1 = L / 100;
    case 'dam'
        L1 = L / 10;
    case 'dm'
        L1 = L * 10;
    case 'cm'
        L1 = L * 100;
    case 'mm'
        L1 = L * 1000;
    otherwise
        disp('Don vi do khong dung!')
        return
end

fprintf('%.3f m = %.3f %s\n', L, L1, unit)