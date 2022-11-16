clc;
clear all;
close all;

syms x;

f1 = x^3 - x^2 - 6*x + 2;
fprintf('\nf(x) = %s\n', string(f1))
for k = 1:3
    fprintf('Dao ham cap %d cua ham so f(x) = %s là f(%d)(x) = %s\n',...
        k, string(f1), k, string(diff(f1, k)))
end

f2 = nthroot(x, 3) + 1/3 * x;
fprintf('\nf(x) = %s\n', string(f2))
for k = 1:3
    fprintf('Dao ham cap %d cua ham so f(x) = %s là f(%d)(x) = %s\n',...
        k, string(f2), k, string(diff(f2, k)))
end

f3 = cos(2*x);
fprintf('\nf(x) = %s\n', string(f3))
for k = 1:3
    fprintf('Dao ham cap %d cua ham so f(x) = %s là f(%d)(x) = %s\n',...
        k, string(f3), k, string(diff(f3, k)))
end

f4 = x / (x^3 - 1);
fprintf('\nf(x) = %s\n', string(f4))
for k = 1:3
    fprintf('Dao ham cap %d cua ham so f(x) = %s là f(%d)(x) = %s\n',...
        k, string(f4), k, string(diff(f4, k)))
end

f5 = nthroot(x, 2) - nthroot(x, 4);
fprintf('\nf(x) = %s\n', string(f5))
for k = 1:3
    fprintf('Dao ham cap %d cua ham so f(x) = %s là f(%d)(x) = %s\n',...
        k, string(f5), k, string(diff(f5, k)))
end