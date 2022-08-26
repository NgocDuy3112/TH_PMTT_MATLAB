a = input('Nhập số tự nhiên a: ');
b = input('Nhập số tự nhiên b: ');

gcd = find_gcd(a, b);
lcm = a * b / gcd;
fprintf('UCLN(%d, %d) = %d\n', a, b, gcd)
fprintf('BCNN(%d, %d) = %d\n', a, b, lcm)