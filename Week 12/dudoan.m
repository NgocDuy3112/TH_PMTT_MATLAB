function I = dudoan()
    I = 0;
    a = 'y';
    while lower(a) == 'y'
        b = round(rand(1)*6);
        fprintf('Giá trị của xúc sắc là %d\n', b)
        a = input('Bạn có muốn tiếp tục không?(y\n) ');
        clc
        while (and(lower(a) ~= 'y', lower(a) ~= 'n'))
            clc
            fprintf('Mời bạn nhập lại\n')
            a = input('Bạn có muốn tiếp tục không?(y\n) ');
        end
end