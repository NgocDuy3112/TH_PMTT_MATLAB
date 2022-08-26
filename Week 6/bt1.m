A = [2 4 1; 6 7 2; 3 5 9];

fprintf('\nMa trận A = \n')
print_matrix(A);

x = A(1, :);
fprintf('\nVector x = \n')
print_vector(x)

Y = A(2:3, :);
fprintf('\nMa trận Y = \n')
print_matrix(Y)

S_r = sum(A, 2);
fprintf('\nVector S_r = \n')
print_vector(S_r)

S_c = sum(A, 1);
fprintf('\nVector S_c = \n')
print_vector(S_c)

%M = max(A, [], 'all'); -> R2018b or later
M = max(max(A));
fprintf('\nPhần tử lớn nhất trong ma trận A là %d\n', M)

%m = min(A, [], 'all'); -> R2018b or later
m = min(min(A));
fprintf('\nPhần tử nhỏ nhất trong ma trận A là %d\n', m)

%S = sum(A, 'all'); -> R2018b or later
S = sum(sum(A));
fprintf('\nTổng các phần tử của ma trận A là %d\n', S)