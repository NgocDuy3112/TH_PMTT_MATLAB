n = 0;
while true
    error = abs(pi_numeric(n) - pi);
    if (error < 10^-9)
        break
    end
    n = n + 1;
end

fprintf('Voi n = %d, sai so voi so pi nho hon 10^-9\n', n)