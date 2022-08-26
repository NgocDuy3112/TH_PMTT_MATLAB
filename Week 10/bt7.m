syms x y z t;

f1 = sin(x^2 + y^2) / (x^2 + y^2);
fprintf('\nf1 = %s\n', string(f1))
fprintf('Kết quả toán tử Laplace là\n%s\n',...
    string(simplify(laplace_operator(f1))))

f2 = exp(-y^2-z^2)*cos(sqrt(1 + x - 7));
fprintf('\nf2 = %s\n', string(f2))
fprintf('Kết quả toán tử Laplace là\n%s\n',...
    string(simplify(laplace_operator(f2))))

f3 = log(2*x*y/(x^2 + 2*y^2 + 3*z^2)) + ...
    x*y*z*exp(x*y*z*t)/sqrt(x^2-y^2+z^2-t^2);
fprintf('\nf3 = %s\n', string(f3))
fprintf('Kết quả toán tử Laplace là\n%s\n',...
    string(simplify(laplace_operator(f3))))