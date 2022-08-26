function sq = square_root(a)
    if (a < 0)
        error('Tham số nhập vào phải là số không âm')
    end
    epsilon = 10^-6;
    x_prev = a;
    x_now = (x_prev + a/x_prev)/2;
    while (abs(x_now - x_prev) >= epsilon)
        x_prev = x_now;
        x_now = (x_prev + a/x_prev)/2;
    end
    sq = x_now;
end