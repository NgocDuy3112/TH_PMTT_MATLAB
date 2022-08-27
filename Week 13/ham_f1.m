function f = ham_f1(x)
    while x < 1
        f = log(1/(1 - x));
        fprintf('f1(%f) = %f\n', x, f)
        x = input('Nhập giá trị x = ');
    end
end