x = input('Nhap vector (kem theo cap ngoac vuong []): ');
type = input('Ban muon tinh chuan nao (nhap kem cap nhay don '''': 1, 2, inf? ');
norm = 0;
n = length(x);

switch (type)
    case '1'
        %norm = sum(abs(x));
        for i = 1:n
            norm = norm + abs(x(i));
        end
    case '2'
        %norm = sqrt(sum(x.^2));
        for i = 1:n
            norm = norm + x(i)^2;
            norm = sqrt(norm);
        end
    case 'inf'
        %norm = max(abs(x));
        for i = 1:n
            if (norm < abs(x(i)))
                norm = abs(x(i));
            end
        end
    otherwise
        fprintf('Khong co chuan %s\n', type)
        return
end

fprintf('Chuan %s cua vecto vua nhap la %.3f\n', type, norm)