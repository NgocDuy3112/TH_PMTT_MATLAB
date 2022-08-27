M = [1 2 3;...
    2 1 5;...
    4 6 4;...
    2 3 2];
m = size(M, 1);

fprintf('Ma trận M trước khi hoán vị:\n')
disp(M)
for i = 1:m - 1
    for j = i + 1:m
        if M(j, 2) > M(i, 2)
            temp = M(j, :);
            M(j, :) = M(i, :);
            M(i, :) = temp;
        end
    end
end
fprintf('Ma trận M sau khi hoán vị:\n')
disp(M)