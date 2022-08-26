function r = Hang_Matran(A)
    A_rg = Rutgon_Matran(A);
    r = 0;
    m = size(A_rg, 1);
    for i = 1:m
        if (all(A_rg(i, :) == 0))
            r = r + 1;
        end
    end
end