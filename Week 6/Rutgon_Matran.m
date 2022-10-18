function A_rg = Rutgon_Matran(A)
    A_rg = A;
    s = size(A_rg, 1);
    sw = 0;
    for i = 1:s
        if A_rg(i, i) == 0
            for j = 1:s
                if A_rg(j, i) ~= 0
                    sw = j;
                end
            end
            temp_row = A_rg(sw, :);
            A_rg(sw, :) = A_rg(i, :);
            A_rg(i, :) = temp_row;
        end
        
        A_rg(i, :) = A_rg(i, :) / A_rg(i, i);
        for j = 1:s
            if i ~= j
                A_rg(j, :) = A_rg(j, :) - A_rg(i, :) * A_rg(j, i);
            end
        end
    end
end