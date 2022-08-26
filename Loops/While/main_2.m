sum = 0;
k = 1;

while true
    if (sum > 100)
        k = k - 1;
        sum = sum - k^2;
        break
    end
    sum = sum + k^2;
    k = k + 1;
    fprintf('After the loop #%d: %d\n', k, sum)
end

fprintf('So nguyen lon nhat la %d voi tong la %d\n', k, sum)