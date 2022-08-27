function f = ham_f3(x)
    while and(x > 0, x ~= 1)
        f = (1 + sqrt(x))/(x^2 - x);
        fprintf('f1(%f) = %f\n', x, f)
        x = input('Nhập giá trị x = ');
    end
end