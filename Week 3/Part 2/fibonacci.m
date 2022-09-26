function F = fibonacci(n)
    a = 0;
    b = 1;
    if (n == 0)
        F = a;
    end
    for i = 2:n
        c = a + b;
        a = b;
        b = c;
    end
    F = b;
end
