n = input('Nhập vào kích thước của mảng: ');
A = floor(rand(1, n) * 100);
fprintf('Mảng A ban đầu là:\n')
disp(A)

j = 1;
N = size(A, 2);
for i = 1:N
    if ~check_prime(A(i))
        B(j) = A(i);
        j = j + 1;
    end
end
fprintf('Mảng A sau khi xoá các số nguyên tố bằng vòng lặp for:\n')
disp(B)
C = A(~check_prime(A));
fprintf('Mảng A sau khi xoá các số nguyên tố dùng phép toán ma trận:\n')
disp(C)