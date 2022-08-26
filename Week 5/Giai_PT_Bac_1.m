function [x, n] = Giai_PT_Bac_1(a, b)
    if (a ~= 0)
        if (b ~= 0)
            x = -b/a;
        else
            x = 0;
        end
        n = 1;
    else
        if (b == 0)
            x = NaN;
            n = Inf; 
        else
            if (b > 0)
                x = Inf;
            else
                x = -Inf;
            end
            n = 0;
        end
    end
end