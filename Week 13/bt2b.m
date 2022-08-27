n = input('Nhập vào kích thước của mảng: ');
A = floor(rand(1, n) * 100);
fprintf('Mảng A ban đầu là:\n')
disp(A)

j = 1;
N = size(A, 2);
for i = 1:N
    if and(mod(A(i), 2) ~= 0, mod(A(i), 3) ~= 0)
        B(j) = A(i);
        j = j + 1;
    end
end
fprintf('Mảng A sau khi xoá các số chia hết cho 2 và 3 bằng vòng lặp for:\n')
disp(B)
C = A(mod(A, 2) ~= 0);
C = C(mod(C, 3) ~= 0);
fprintf('Mảng A sau khi xoá các số chia hết cho 2 và 3 dùng phép toán ma trận:\n')
disp(C)