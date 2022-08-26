function F = fibonacci(n)
    if (or(n == 1, n == 2))
        F = 1;
    else
        F = fibonacci(n - 1) + fibonacci(n - 2);
    end
end