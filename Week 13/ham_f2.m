function f = ham_f2(x)
    while x >= 0
        f = sqrt(x);
        fprintf('f1(%f) = %f\n', x, f)
        x = input('Nhập giá trị x = ');
    end
end