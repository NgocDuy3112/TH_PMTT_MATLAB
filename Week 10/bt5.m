clc;
clear all;
close all;

syms x y;

figure('Name', 'Bai tap 5a', 'NumberTitle', 'off')
f1a = 2*x^2;
fplot(@(t) 2*t.^2);
hold on;
f2a = 1 + x^2;
fplot(@(t) 1 + t.^2);
hold on;
eqn = 2*x^2 == 1 + x^2;
X1 = solve(eqn, x);
n1 = length(X1);
for i = 1:n1
    Y1 = subs(f1a, x, X1(i));
    plot(X1(i), Y1, 'o', 'MarkerFaceColor', 'black')
    hold on;
end
xlabel('x')
ylabel('y')
legend(string(f1a), string(f2a), 'Giao diem')
A1 = int(abs(int(1, y, f1a, f2a)), x, min(X1), max(X1));
fprintf('Diện tich cua mien nam giua hai do thi %s va %s la: %f\n',...
    string(f1a), string(f2a), A1);

figure('Name', 'Bai tap 5b', 'NumberTitle', 'off')
f1b = 2*x;
fplot(@(t) 2*t);
hold on;
f2b = x^2;
fplot(@(t) t.^2);
hold on;
eqn = 2*x == x^2;
X2 = solve(eqn, x);
n2 = length(X2);
for i = 1:n2
    Y2 = subs(f1b, x, X2(i));
    plot(X2(i), Y2, 'o', 'MarkerFaceColor', 'black')
    hold on;
end
xlabel('x')
ylabel('y')
legend(string(f1b), string(f2b), 'Giao diem')
A2 = int(abs(int(1, y, f1b, f2b)), x, min(X2), max(X2));
fprintf('Dien tich cua mien nam giua hai do thi %s va %s la: %f\n',...
    string(f1b), string(f2b), A2);

figure('Name', 'Bai tap 5c', 'NumberTitle', 'off')
f1c = x - 1 - y;
fimplicit(@(u, v) u - 1 - v)
hold on;
f2c = y^2 - 2*x - 6;
fimplicit(@(u, v) v.^2 - 2*u - 6)
hold on;
eqn = y + 1 == (y^2 - 6)/2;
Y3 = solve(eqn, y);
n3 = length(Y3);
fc = y + 1;
for i = 1:n3
    X3 = subs(fc, y, Y3(i));
    plot(X3, Y3(i), 'o', 'MarkerFaceColor', 'black')
    hold on;
end
xlabel('x')
ylabel('y')
legend(string(f1c), string(f2c), 'Giao diem')
A3 = int(abs(int(1, x, y + 1, (y^2 - 6)/2)), y, min(Y3), max(Y3)); 
fprintf('Dien tich cua mien nam giua 2 đồ thị %s và %s la: %f\n',...
    string(f1c), string(f2c), A3);

figure('Name', 'Bai tap 5d', 'NumberTitle', 'off')
f1d = x;
fplot(@(t) t);
hold on;
f2d = x^3;
fplot(@(t) t.^3);
hold on;
xlabel('x')
ylabel('y')
eqn = x == x^3;
X4 = solve(eqn, x);
n4 = length(X4);
for i = 1:n4
    Y4 = subs(f1d, x, X4(i));
    plot(X4(i), Y4, 'o', 'MarkerFaceColor', 'black')
    hold on;
end
legend(string(f1d), string(f2d), 'Giao diem')
A4 = int(abs(int(1, y, x, x^3)), x, min(X4), max(X4));
fprintf('Dien tich cua mien nam giua hai do thi %s va %s la: %f\n',...
    string(f1d), string(f2d), A4);

figure('Name', 'Bai tap 5e', 'NumberTitle', 'off')
f1e = y - x + 2;
fimplicit(@(u, v) v - u + 2);
hold on;
f2e = x - y^2;
fimplicit(@(u, v) u - v.^2);
hold on;
eqn = y + 2 == y^2;
Y5 = solve(eqn, y);
n5 = length(Y5);
fe = y + 2;
for i = 1:n5
    X5 = subs(fe, y, Y5(i));
    plot(X5, Y5(i), 'o', 'MarkerFaceColor', 'black')
    hold on;
end
xlabel('x')
ylabel('y')
legend(string(f1e), string(f2e), 'Giao diem')
A5 = int(abs(int(1, x, y + 2, y^2)), y, min(Y5), max(Y5));
fprintf('Dien tich cua mien nam giua hai do thi %s va %s la: %f\n',...
    string(f1e), string(f2e), A5);
