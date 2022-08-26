syms x;
h = [0.2 0.1 0.01];

f1 = x^6 + x^4 - 3*x^3 - 16*x;
fprintf('\n%s\n', string(f1))
for i = 1:2
    fprintf('Đạo hàm cấp %d tại x = 2 chính xác là %f\n',...
        i, subs(diff(f1, x, i), x, 2))
    for j = 1:3
        fprintf('Đạo hàm cấp %d tại x = 2 xấp xỉ với h = %f là %f\n',...
            i, h(j), Xapxi_daoham(f1, i, 2, h(j)))
    end
end

f2 = sqrt(x) + nthroot(x, 3) + x*sqrt(x);
fprintf('\n%s\n', string(f2))
for i = 1:2
    fprintf('Đạo hàm cấp %d tại x = 2 chính xác là %f\n',...
        i, subs(diff(f2, x, i), x, 2))
    for j = 1:3
        fprintf('Đạo hàm cấp %d tại x = 2 xấp xỉ với h = %f là %f\n',...
            i, h(j), Xapxi_daoham(f2, i, 2, h(j)))
    end
end

f3 = 2*x - 5*x^(3/4);
fprintf('\n%s\n', string(f3))
for i = 1:2
    fprintf('Đạo hàm cấp %d tại x = 2 chính xác là %f\n',...
        i, subs(diff(f3, x, i), x, 2))
    for j = 1:3
        fprintf('Đạo hàm cấp %d tại x = 2 xấp xỉ với h = %f là %f\n',...
            i, h(j), Xapxi_daoham(f3, i, 2, h(j)))
    end
end

f4 = sin(x) + log(x) + 1/x^2;
fprintf('\n%s\n', string(f4))
for i = 1:2
    fprintf('Đạo hàm cấp %d tại x = 2 chính xác là %f\n',...
        i, subs(diff(f4, x, i), x, 2))
    for j = 1:3
        fprintf('Đạo hàm cấp %d tại x = 2 xấp xỉ với h = %f là %f\n',...
            i, h(j), Xapxi_daoham(f4, i, 2, h(j)))
    end
end
