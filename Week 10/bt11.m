syms x y;
f = x - 3*y^2;
n1 = input('Chia trục x thành bao nhiêu khoảng? ');
n2 = input('Chia trục y thành bao nhiêu khoảng? ');

S = XapXi_TichPhan_Boi(f, 0, 2, 1, 2, n1, n2);
Sm = int(int(f, y, 1, 2), x, 0, 2);
equal = '';
if(abs(S, Sm) < 10^-5), equal = ' '; else equal = ' không '; end
fprintf('\nKết quả tích phân không dùng Matlab là %f\n', S)
fprintf('Kết quả tích phân dùng Matlab là %f\n', Sm)
fprintf('Hai kết quả trên%sbằng nhau', equal)