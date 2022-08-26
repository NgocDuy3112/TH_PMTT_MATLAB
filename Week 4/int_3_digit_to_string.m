function n_string = int_3_digit_to_string(n)
    n_string = '';
    s = int2str(n);
    if (or(n ~= int32(n), or(n < 0, length(s) ~= 3)))
        error('Tham số đầu vào phải là số nguyên dương có 3 chữ số')
    end
    switch(s(1))
        case '1'
            n_string = append(n_string, 'một trăm');
        case '2'
            n_string = append(n_string, 'hai trăm');
        case '3'
            n_string = append(n_string, 'ba trăm');
        case '4'
            n_string = append(n_string, 'bốn trăm');
        case '5'
            n_string = append(n_string, 'năm trăm');
        case '6'
            n_string = append(n_string, 'sáu trăm');
        case '7'
            n_string = append(n_string, 'bảy trăm');
        case '8'
            n_string = append(n_string, 'tám trăm');
        case '9'
            n_string = append(n_string, 'chín trăm');
    end
    switch(s(2))
        case '1'
            n_string = append(n_string, ' mười');
        case '2'
            n_string = append(n_string, ' hai mươi');
        case '3'
            n_string = append(n_string, ' ba mươi');
        case '4'
            n_string = append(n_string, ' bốn mươi');
        case '5'
            n_string = append(n_string, ' năm mươi');
        case '6'
            n_string = append(n_string, ' sáu mươi');
        case '7'
            n_string = append(n_string, ' bảy mươi');
        case '8'
            n_string = append(n_string, ' tám mươi');
        case '9'
            n_string = append(n_string, ' chín mươi');
    end
    switch(s(3))
        case '1'
            switch(s(2))
                case '1'
                    n_string = append(n_string, ' một');
                otherwise
                    n_string = append(n_string, ' mốt');
            end
        case '2'
            n_string = append(n_string, ' hai');
        case '3'
            n_string = append(n_string, ' ba');
        case '4'
            n_string = append(n_string, ' bốn');
        case '5'
            n_string = append(n_string, ' lăm');
        case '6'
            n_string = append(n_string, ' sáu');
        case '7'
            n_string = append(n_string, ' bảy');
        case '8'
            n_string = append(n_string, ' tám');
        case '9'
            n_string = append(n_string, ' chín');
    end
end