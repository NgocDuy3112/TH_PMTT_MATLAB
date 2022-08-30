clear all
close all
clc
disp('Câu 1')
S_for = 0;
S_while = 0;
for i = 2:2:100
    S_for = S_for + i;
end
fprintf('Dùng vòng for\n2 + 4 + ... + 98 + 100 = %d\n', S_for)
n = 2;
while (n <= 100)
    S_while = S_while + n;
    n = n + 2;
end
fprintf('Dùng vòng while\n2 + 4 + ... + 98 + 100 = %d\n', S_while)
clear all
S_while = 1/(1 *(1 + 2));
k = 1;
while (S_while < 1/2)
    k = k + 1;
    S_while = S_while + 1/(k*(k + 2));
end
fprintf('Dùng vòng lặp while, với n_min = %d, tổng từ 1 tới n của 1/k(k + 2) = %f >= 1/2\n',... 
    k, S_while)
S_for = 0;
n_min = 0;
for i = 1:1000
    S_for = S_for + 1/(i*(i + 2));
    if (S_for >= 1/2)
        n_min = i;
        break
    end
end
fprintf('Dùng vòng lặp for, với n_min = %d, tổng từ 1 tới n của 1/k(k + 2) = %f >= 1/2\n',... 
    n_min, S_for)
clear all
n = input('Nhập một số tự nhiên: ');
while (or(n < 0, n ~= int32(n)))
    n = input('Nhập một số tự nhiên: ');
end
fprintf('Dùng vòng for: %d! = %d\n', n, giaithua_for(n))
fprintf('Dùng vòng while: %d! = %d\n', n, giaithua_while(n))

char = input('Nhấn phím bất kỳ: ');
clear all
close all
clc
disp('Câu 2')
a = input('Nhập kích thước thứ nhất: ');
b = input('Nhập kích thước thứ hai: ');
[D, S] = Hinhchunhat(a, b);
fprintf('Chu vi của hình chữ nhật %d x %d là: %d\n', a, b, D)
fprintf('Diện tích của hình chữ nhật %d x %d là: %d\n', a, b, S)

char = input('Nhấn phím bất kỳ: ');
clear all
close all
clc
disp('Câu 3')
figure('Name', 'Bài tập 3a', 'NumberTitle', 'off')
x = 5:0.01:10;
f = exp(-x)./(x + 1);
plot(x, f, 'r-.', 'LineWidth', 2)
xlabel('x')
ylabel('y')
legend('f')
title('Đồ thị hàm số')
clear all
figure('Name', 'Bài tập 3b', 'NumberTitle', 'off')
x = -2*pi:pi/100:2*pi;
f1 = sin(x + pi/3);
f2 = cos(x);
f3 = sin(x + pi);
plot(x, f1, 'b')
hold on
plot(x, f2, 'r')
hold on
plot(x, f3, 'g')
hold on
xlabel('x')
ylabel('y')
legend('sin(x + pi/3)', 'cos(x)', 'sin(x + pi)')
title('Đồ thị các hàm số')
clear all
figure('Name', 'Bài tập 3c', 'NumberTitle', 'off')
sgtitle('Đồ thị hàm số sử dụng các lệnh plot3, mesh, meshc, meshz, surf, surfc')
X = -2*pi:pi/10:2*pi;
Y = -2*pi:pi/10:2*pi;
[x, y] = meshgrid(X, Y);
f = sin(2*pi*x) - sin(pi/2*y) + sin(pi*x + pi*y);
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
f = x^2 + 7*x - 3;
a = -5;
b = 5;
F = int(f, x, a, b);
n = [10, 50, 100];
error = 10^(-4);
fprintf('Tích phân từ %d đến %d của %s tính bằng hàm int là %f\n',...
    a, b, string(f), F)
for i = 1:3
    I = int_mid(a, b, n(i));
    e = abs(F - I)/abs(F);
    fprintf('Với n = %d, xấp xỉ tích phân từ %d đến %d của %s là %f, sai số là %f\n',...
        n(i), a, b, string(f), I, e)
end

char = input('Nhấn phím bất kỳ: ');
clear all
close all
clc