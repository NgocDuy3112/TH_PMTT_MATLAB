function [x, n] = Giai_PT_Bac_2(a, b, c)
    if (a == 0)
        [x, n] = Giai_PT_Bac_1(b, c);
    else
        delta = b^2 - 4*a*c;
        if (delta < 0)
            x = Nan;
            n = 0;
        elseif (delta == 0)
            x = -b/(2*a);
            n = 1;
        else
            x = zeros(1, 2);
            x(1) = (-b - sqrt(delta))/(2*a);
            x(2) = (-b + sqrt(delta))/(2*a);
            n = 2;
        end
    end
end