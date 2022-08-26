sum = 0;

for i = 5:20
    f = 1.0 * i^2 / (i - 1);
    sum = sum + f;
end

fprintf('Tong cua bieu thuc la: %.5f\n', sum)