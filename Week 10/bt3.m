syms x y;

f1 = x^2 + x*y + y^2 + y;
fprintf('\nf1(x) = %s\nCác đạo hàm lần lượt là:\n', string(f1))
fprintf('fx = %s\n', string(diff(f1, x, 1)))
fprintf('fxx = %s\n', string(diff(f1, x, 2)))
fprintf('fxy = %s\n', string(diff(diff(f1, y, 1), x, 1)))
fprintf('fy = %s\n', string(diff(f1, y, 1)))
fprintf('fyy = %s\n', string(diff(f1, y, 2)))

f2 = x*exp(-2*x^2 - 2*y^2);
fprintf('\nf2(x) = %s\nCác đạo hàm lần lượt là:\n', string(f2))
fprintf('fx = %s\n', string(diff(f2, x, 1)))
fprintf('fxx = %s\n', string(diff(f2, x, 2)))
fprintf('fxy = %s\n', string(diff(diff(f2, y, 1), x, 1)))
fprintf('fy = %s\n', string(diff(f2, y, 1)))
fprintf('fyy = %s\n', string(diff(f2, y, 2)))

f3 = exp(x)*cos(y);
fprintf('\nf3(x) = %s\nCác đạo hàm lần lượt là:\n', string(f3))
fprintf('fx = %s\n', string(diff(f3, x, 1)))
fprintf('fxx = %s\n', string(diff(f3, x, 2)))
fprintf('fxy = %s\n', string(diff(diff(f3, y, 1), x, 1)))
fprintf('fy = %s\n', string(diff(f3, y, 1)))
fprintf('fyy = %s\n', string(diff(f3, y, 2)))