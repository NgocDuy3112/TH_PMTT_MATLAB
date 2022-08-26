M = input('Nhap can nang cua ban (kg): ');
h = input('Nhap chieu cao cua ban (m): ');
BMI = M / h^2;
type = '';

if (BMI < 18.5)
    type = 'Duoi chuan';
elseif (and(BMI >= 18.5, BMI < 25))
    type = 'Chuan';
elseif (and(BMI >= 25, BMI < 30))
    type = 'Thua can';
elseif (and(BMI >= 30, BMI < 40))
    type = 'Beo - nen giam can';
else
    type = 'Rat beo - can giam can ngay';
end

fprintf('Chi so BMI cua ban: %.3f\nChan doan: %s\n', BMI, type)