clear all
close all
clc
disp('Câu 1')
for i = 1:10
    for j = 1:10
        if (i == j)
            U(i, j) = Giaithua(j - 1)/(Giaithua(i - 1)*Giaithua(j - i));
            L(i, j) = Giaithua(i - 1)/(Giaithua(j - 1)*Giaithua(i - j));
        elseif (i > j)
            U(i, j) = 0;
            L(i, j) = Giaithua(i - 1)/(Giaithua(j - 1)*Giaithua(i - j));
        else
            U(i, j) = Giaithua(j - 1)/(Giaithua(i - 1)*Giaithua(j - i));
            L(i, j) = 0;
        end
    end
end
fprintf('Ma trận U = \n')
disp(U)
fprintf('Ma trận L = \n')
disp(L)
P = L*U;
fprintf('Ma trận P = \n')
disp(P)
for i = 1:10
    I(i, i) = P(i, i);
end
fprintf('Ma trận I = \n')
disp(I)

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 2')
figure('Name', 'Câu 2', 'NumberTitle', 'off')
a = 8;
b = 5;
t = 0:pi/100:10*pi;
x = (a + b)*cos(t) - b*cos((1 + a/b)*t);
y = (a + b)*sin(t) - b*sin((1 + a/b)*t);
plot(x, y, 'b-')
xlabel('x')
ylabel('y')
title('Đồ thị hàm số')
legend('f')

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 3')
syms x y;
f = x^3;
I = Tichphan(f, 0, 1);
disp(I)
g = x*y;
II = Tichphan_boi(g, 0, 1, 0, 1);
disp(II)

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 4')
n = input('Nhập một số tự nhiên n = ');
A = mysparse(n);
disp(A)

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 5')
syms x;
f = exp(x^2 + 1);
df = Daoham_1(f);
ddf = Daoham_2(f);
fprintf('f = %s\n', string(f))
fprintf('Đạo hàm cấp 1 của f là %s\n', string(df))
fprintf('Đạo hàm cấp 2 của f là %s\n', string(ddf))
A = [4 5; 8 9];
B = [7 1; 3 0];
disp(A)
disp(B)
C = Tong_MT(A, B);
disp(C)

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc