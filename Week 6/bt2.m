X = randi([-10 10], 4, 4);

fprintf('Ma trận X =\n')
print_matrix(X)

A = X + 15;
fprintf('Ma trận X sau khi cộng từng phần tử cho 15 là:\n');
print_matrix(A)

B = X.^2;
fprintf('Ma trận X sau khi bình phương từng phần tử là:\n');
print_matrix(B)

C(1:2, :) = X(1:2, :) + 10;
C(3:4, :) = X(3:4, :);
fprintf('Ma trận X sau khi cộng thêm 10 vào các phần tử ở dòng 1 và dòng 2 là:\n');
print_matrix(C)

D(:, [1,4]) = X(:, [1,4]) + 10;
D(:, [2,3]) = X(:, [2,3]);
fprintf('Ma trận X sau khi cộng thêm 10 vào các phần tử ở cột 1 và cột 4 là:\n');
print_matrix(D)

E = sqrt(X);
fprintf('Ma trận X sau khi lấy căn bậc hai từng phần tử là:\n');
print_matrix(E)