clear all
close all
clc
disp('Câu 1')

for i = 1:10
    for j = 1:10
        P(i, j) = Giaithua(i + j - 2)/(Giaithua(i - 1)*Giaithua(j - 1));
    end
end
disp(P)
U = zeros(10);
L = zeros(10);
I = zeros(10);
for i = 1:10
    for j = 1:10
        if (i == j)
            I(i, j) = P(i, j);
        end
        if (i <= j)
            U(i, j) = P(i, j);
        end
        if (i >= j)
            L(i, j) = P(i, j);
        end
    end
end
disp(U)
disp(L)
disp(I)

char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 2')
figure('Name', 'Câu 2', 'NumberTitle', 'off')
subplot(1, 2, 1)
t = -3:0.01:3;
x = abs(1 - t);
y = abs(t) + 2;
plot(x, y, 'b-')
xlabel('x')
ylabel('y')
title('Câu 2a')
subplot(1, 2, 2)
fimplicit(@(x, y) (x.^2 + y.^2).^2 - 2*(x.^2 - y.^2))
xlabel('x')
ylabel('y')
xlim([-2 2])
ylim([-1 1])
title('Câu 2b')

char = input('Nhập phím bất kì để tiếp tục ');
clear all
close all
clc
disp('Câu 3')
n = input('Nhập số tự nhiên n = ');
fprintf('Đa thức Chebyshev bậc %d là %s\n',...
    n, string(ChebT(n)))
fprintf('Đạo hàm cấp 1 của đa thức là %s\n',...
    string(D_ChebT(n)))


char = input('Nhấn phím bất kì để tiếp tục: ');
clear all
close all
clc
disp('Câu 4')
A = input('Nhập vào một vector kèm dấu []: ');
T1 = U_Toeplit(A);
disp(T1)
T2 = Toeplit(A);
disp(T2)

char = input('Nhập phím bất kì để tiếp tục ');
clear all
close all
clc
disp('Câu 5')
f = input('Nhập vào hàm số có biến x: ');
n = input('Nhập vào bậc của khai triển Taylor: ');
x0 = input('Nhập vào x0: ');
F = str2sym(f);
P = DaThuc_Taylor(F, 5, 0);
fprintf('Khai triển của hàm số f = %s tại x = %f với bậc n = %d là P = %s\n',...
    string(F), x0, n, string(P));

char = input('Nhập phím bất kì để tiếp tục ');
clear all
close all
clc