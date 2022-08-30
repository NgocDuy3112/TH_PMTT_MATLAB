clear all
close all
clc
disp('Câu 1')
S_for = 0;
S_while = 0;
for i = 1:10
    if (mod(i, 2) == 0)
        S_for = S_for + i^2;
    else
        S_for = S_for + i;
    end
end
fprintf('Dùng vòng for, 1 + 2^2 + 3 + 4^2 +...+ 9 + 10^2 = %d\n', S_for)
n = 1;
while (n <= 10)
    if (mod(n, 2) == 0)
        S_while = S_while + n^2;
    else
        S_while = S_while + n;
    end
    n = n + 1;
end
fprintf('Dùng vòng while, 1 + 2^2 + 3 + 4^2 +...+ 9 + 10^2 = %d\n', S_while)
clear all
S_while = 1^2/(1^2 + 1);
k = 1;
while (S_while < 10)
    k = k + 1;
    S_while = S_while + k^2/(k^2 + 1);
end
fprintf('Dùng vòng while, với n_min = %d, tổng từ 1 đến n của k^2/(k^2 + 1) là %f\n',...
    k, S_while)
S_for = 0;
n_min = 0;
for i = 1:1000
    S_for = S_for + i^2/(i^2 + 1);
    if (S_for >= 10)
        n_min = i;
        break
    end
end
fprintf('Dùng vòng for, với n_min = %d, tổng từ 1 đến n của k^2/(k^2 + 1) là %f\n',...
    n_min, S_for)
clear all
n = input('Nhập một số tự nhiên bất kì: ');
while (or(n < 0, n ~= int32(n)))
    n = input('Nhập một số tự nhiên bất kì: ');
end
fprintf('Dùng vòng for, %d! = %d\n', n, giaithua_for(n))
fprintf('Dùng vòng while, %d! = %d\n', n, giaithua_while(n))

char = input('Nhập một phím bất kì: ');
clear all
close all
clc
disp('Câu 2')
a = input('Nhập kích thước thứ nhất của hình chữ nhật: ');
while (a <= 0)
    a = input('Nhập kích thước thứ nhất của hình chữ nhật: ');
end
b = input('Nhập kích thước thứ hai của hình chữ nhật: ');
while (b <= 0)
    b = input('Nhập kích thước thứ nhất của hình chữ nhật: ');
end
n = input('Chọn 1 để tính diện tích, 2 để tính chu vi: ');
switch(n)
    case 1
        fprintf('Diện tích hình chữ nhật %d x %d là %d\n', a, b, Hinhchunhat(a, b, n))
    case 2
        fprintf('Chu vi hình chữ nhật %d x %d là %d\n', a, b, Hinhchunhat(a, b, n))
end

char = input('Nhập một phím bất kì: ');
clear all
close all
clc
disp('Câu 3')
figure('Name', 'Câu 3a', 'NumberTitle', 'off')
x = pi:pi/100:2*pi;
f = sin(x)./x;
plot(x, f, 'y-', 'LineWidth', 3)
xlabel('x')
ylabel('y')
legend('f')
title('Đồ thị hàm số')
clear all
figure('Name', 'Câu 3b', 'NumberTitle', 'off')
x = -2*pi:pi/100:2*pi;
f1 = sin(x + pi/2);
f2 = cos(x - pi);
f3 = sin(x);
plot(x, f1, 'r')
hold on
plot(x, f2, 'b')
hold on
plot(x, f3, 'g')
hold on
xlabel('x')
ylabel('y')
legend('sin(x + pi/2)', 'cos(x - pi)', 'sin(x)')
title('Đồ thị các hàm số')
clear all
figure('Name', 'Câu 3c', 'NumberTitle', 'off')
sgtitle('Đồ thị hàm số sử dụng các lệnh plot3, mesh, meshc, meshz, surf, surfc')
X = -2:0.1:2;
Y = -2:0.1:2;
[x, y] = meshgrid(X, Y);
f = exp(x) - x.^3 + 2*y + 4*cos(pi*x);
subplot(2, 3, 1)
plot3(x, y, f)
xlabel('x')
ylabel('y')
zlabel('f')
title('Dùng lệnh plot3')
subplot(2, 3, 2)
mesh(x, y, f)
xlabel('x')
ylabel('y')
zlabel('f')
title('Dùng lệnh mesh')
subplot(2, 3, 3)
meshc(x, y, f)
xlabel('x')
ylabel('y')
zlabel('f')
title('Dùng lệnh meshc')
subplot(2, 3, 4)
meshz(x, y, f)
xlabel('x')
ylabel('y')
zlabel('f')
title('Dùng lệnh meshz')
subplot(2, 3, 5)
surf(x, y, f)
xlabel('x')
ylabel('y')
zlabel('f')
title('Dùng lệnh surf')
subplot(2, 3, 6)
surfc(x, y, f)
xlabel('x')
ylabel('y')
zlabel('f')
title('Dùng lệnh surfc')

char = input('Nhấn phím bất kỳ: ');
clear all
close all
clc
disp('Câu 4')
syms x;
f = x^3 - 4*x + 1;
a = 1;
b = 4;
F = int(f, x, a, b);
n = [10, 50, 100];
error = 10^(-4);
fprintf('Tích phân từ %d đến %d của %s tính bằng hàm int là %f\n',...
    a, b, string(f), F)
for i = 1:3
    I = int_tra(a, b, n(i));
    e = abs(F - I)/abs(F);
    fprintf('Với n = %d, xấp xỉ tích phân từ %d đến %d của %s là %f, sai số là %f\n',...
        n(i), a, b, string(f), I, e)
end

char = input('Nhấn phím bất kỳ: ');
clear all
close all
clc