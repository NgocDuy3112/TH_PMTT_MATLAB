function S = XapXi_TichPhan_Boi(f, a, b, c, d, nx, ny)
    s = symvar(f);
    n = length(s);
    if (n == 2)
        dx = (b - a)/nx;
        dy = (d - c)/ny;
        dA = dx * dy;
        S = 0;
        for i = 1:nx
            for j = 1:ny
                xi = a + (i - 1)*dx;
                yi = c + (j - 1)*dy;
                xI = a + (i + 1 - 1)*dx;
                yI = c + (j + 1 - 1)*dy;
                x_mid = (xi + xI)/2;
                y_mid = (yi + yI)/2;
                S = S + double(subs(f, s, [x_mid, y_mid]) * dA);
            end
        end
    else
        fprintf('Hàm chỉ nhận hàm số có đúng 2 biến\n');
        return
    end
end