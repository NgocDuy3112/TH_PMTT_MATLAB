M = input('Nhap so tien ban dau: ');
money = M;
year = 0;

while (money < 2*M)
    money = money * 1.1; 
    year = year + 1;
    fprintf('Tong so tien sau %d nam la %.3f\n', year, money)
end

fprintf('Can %d nam de nhan duoc so tien gap doi ban dau\n', year)