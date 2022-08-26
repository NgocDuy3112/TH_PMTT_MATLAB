function DT_TamGiac_Vuong(a, b, c)
    S = 0;
    if (and(a^2 + b^2 ~= c^2, and(b^2 + c^2 ~= a^2, c^2 + a^2 ~= b^2)))
        fprintf('Tam giác vừa nhập không phải là tam giác vuông\n')
        return
    end
    if (a^2 + b^2 == c^2)
        S = 1/2 * a * b;
    end
    if (b^2 + c^2 == a^2)
        S = 1/2 * b * c;
    end
    if (c^2 + a^2 == b^2)
        S = 1/2 * c * a;
    end
    fprintf('Diện tích tam giác vuông là %f\n', S)
end