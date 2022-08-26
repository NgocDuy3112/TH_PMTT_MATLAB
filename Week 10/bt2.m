syms x;

f1 = nthroot(1 - x^2, 2);
fprintf('\nf1(x) = %s\n', string(f1))
fprintf('Nguyên hàm của f1(x) = %s là F1(x) = %s\n',...
    string(f1), string(int(f1)))

f2 = sin(nthroot(x, 2));
fprintf('\nf2(x) = %s\n', string(f2))
fprintf('Nguyên hàm của f2(x) = %s là F2(x) = %s\n',...
    string(f2), string(int(f2)))

f3 = (cos(x))^4;
fprintf('\nf3(x) = %s\n', string(f3))
fprintf('Tích phân từ 0 đến pi/2 của f3(x) = %s là %f\n',...
    string(f3), int(f3, 0, pi/2))

f4 = abs(x - 5);
fprintf('\nf4(x) = %s\n', string(f4))
fprintf('Tích phân từ 0 đến 10 của f4(x) = %s là %f\n',...
    string(f4), int(f4, 0, 10))

f5 = tan(x);
fprintf('\nf5(x) = %s\n', string(f5))
fprintf('Tích phân từ pi/4 đến pi/3 của f5(x) = %s là %f\n',...
    string(f5), int(f5, pi/4, pi/3))