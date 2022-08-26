sum_10 = 0;
for k = 1:10
    sum_10 = sum_10 + fibonacci(k);
end
fprintf('Tong cua 10 so Fibonacci dau tien là %d\n', sum_10)

sum_50 = 0;
for i = 1:50
    if (or(mod(fibonacci(i), 2) == 0, mod(fibonacci(i), 5) == 0))
        sum_50 = sum_50 + fibonacci(i);
    end
end
fprintf('Tong cac so Fibonacci chia het cho 2 hoac 5 la %d\n', sum_50)

n = 0;
while true
    if (and(fibonacci(n) < 100, fibonacci(n + 1) >= 100))
        break
    end
    n = n + 1;
    fprintf('%d %d\n', fibonacci(n), fibonacci(n + 1))
end
fprintf('F(%d) < 1000 va F(%d) >= 1000', n, n + 1)