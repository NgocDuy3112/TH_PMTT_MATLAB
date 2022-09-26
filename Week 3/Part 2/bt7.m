% Dung vong lap for
S1a = 0;
S1b = 0;
S1c = 0;
n1a = 0;
n1b = 0;
n1c = 0;
for i = 1:10^9
    if S1a < 4
        S1a = S1a + f_a(i);
    else
        n1a = i;
        break;
    end
end
for i = 1:10^9
    if S1b <= 1/2
        S1b = S1b + f_b(i);
    else
        n1b = i;
        break;
    end
end
for i = 1:10^9
    if S1c <= 10
        S1c = S1c + f_c(i);
    else
        n1c = i;
        break;
    end
end
fprintf('=====================Su dung vong lap for=====================\n')
fprintf('Voi n = %d, tong tu 1 toi %d cua 5/k(k + 1) = %f <= 4\n',...
    n1a - 1, n1a - 1, S1a)
fprintf('Voi n = %d, tong tu 1 toi %d cua 1/k(k + 3) = %f >= 1/2\n',...
    n1b - 1, n1b - 1, S1b)
fprintf('Voi n = %d, tong tu 1 toi %d cua k^2/(k^2 + 1) = %f >= 10\n',...
    n1c - 1, n1c - 1, S1c)

% Dung vong lap while
S2a = 0;
S2b = 0;
S2c = 0;
n2a = 1;
n2b = 1;
n2c = 1;
while S2a < 4
    S2a = S2a + f_a(n2a);
    n2a = n2a + 1;
end
while S2b <= 1/2
    S2b = S2b + f_b(n2b);
    n2b = n2b + 1;
end
while S2c <= 10
    S2c = S2c + f_c(n2c);
    n2c = n2c + 1;
end
fprintf('=====================Su dung vong lap while=====================\n')
fprintf('Voi n = %d, tong tu 1 toi %d cua 5/k(k + 1) = %f <= 4\n',...
    n2a - 1, n2a - 1, S2a)
fprintf('Voi n = %d, tong tu 1 toi %d cua 1/k(k + 3) = %f >= 1/2\n',...
    n2b - 1, n2b - 1, S2b)
fprintf('Voi n = %d, tong tu 1 toi %d cua k^2/(k^2 + 1) = %f >= 10\n',...
    n2c - 1, n2c - 1, S2c)
