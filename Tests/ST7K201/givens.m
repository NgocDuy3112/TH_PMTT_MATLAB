function [c, s] =  givens(a, b)
    if (b == 0)
        c = 1;
        s = 0;
    else
        if (abs(b) > abs(a))
            phi = -a/b;
            s = 1/(1 + phi^2);
            c = s*phi;
        else
            phi = -b/a;
            c = 1/(1 + phi^2);
            s = c*phi;
        end
    end
end