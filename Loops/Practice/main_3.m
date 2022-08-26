n = 1;
n_epsilon = 1;
u_n_epsilon = 0;
res = 0;
u_0 = 3/5 + 2/5 * (-1/4)^0;
fprintf('u_%d = %.5f\n', 0, u_0)

while true
    u_n = 3/5 + 2/5 * (-1/4)^n;
    fprintf('u_%d = %.5f\n', n, u_n)
    u_n_prev = 3/5 + 2/5 * (-1/4)^(n - 1);
    diff = abs(u_n_prev - u_n);
    fprintf('|u_%d - u_%d| = %.5f\n', n, n - 1, diff)
    if (diff < 10^(-3))
        n_epsilon = n;
        u_n_epsilon = 3/5 + 2/5 * (-1/4)^(n_epsilon);
        break
    end
    n = n + 1;
end

fprintf('n_epsilon = %d, u_n_epsilon = %.5f\n', n_epsilon, u_n_epsilon)