function B = HamTinh_Tong_Matran(A, n)
    if (or(n == 1, n == 2))
        B = sum(A, n);
    else
        error('n chỉ nhận hai giá trị: 1 hoặc 2')
    end
end