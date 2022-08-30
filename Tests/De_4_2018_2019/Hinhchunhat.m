function S = Hinhchunhat(a, b, n)
    switch(n)
        case 1
            S = a*b;
        case 2
            S = 2*(a + b);
        otherwise
            error('n chỉ nhận hai giá trị 1 hoặc 2')
    end
end