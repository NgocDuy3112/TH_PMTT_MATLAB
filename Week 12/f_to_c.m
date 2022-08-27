function C = f_to_c()
    C = 0;
    F = input('Nhập nhiệt độ Farenhait: ');
    while ~isempty(F)
        C = 5/9*(F - 32);
        fprintf('Nhiệt độ Celcius tương ứng: %f\n', C)
        F = input('Nhập nhiệt độ Farenhait: ');
    end
end