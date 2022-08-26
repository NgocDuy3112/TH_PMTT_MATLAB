sum_1 = 0;
for i = 1:2:9999
    if (mod(i + 1, 4) == 2)
        term = i;
    end
    if (mod(i + 1, 4) == 0)
        term = i^2;
    end
    sum_1 = sum_1 + term;
end

sum_2 = 0;
for i = 2:2:9998
    if (mod(i, 4) == 2)
        term = i^2;
    end
    if (mod(i, 4) == 0)
        term = i;
    end
    sum_2 = sum_2 + term;
end

fprintf('1 + 3^2 + 5 + 7^2 +...+ 9997 + 9999^2 = %d\n', sum_1)
fprintf('2^2 + 4 + 6^2 + 8 +...+ 9996 + 9998^2 = %d\n', sum_2)