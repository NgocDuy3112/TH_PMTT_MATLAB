A = round(rand(1, 100000)*100);
j = 1;

fprintf('Dùng phép toán ma trận:\n')
tic
B = A(mod(A, 3) == 0);
toc
disp(B)

fprintf('Dùng for và if:\n')
n = size(A, 2);
tic
for i = 1:n
    if (mod(A(i), 3) == 0)
        C(1, j) = A(1, i);
        j = j + 1;
    end
end
toc
disp(C)