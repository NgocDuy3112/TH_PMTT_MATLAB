n = input('Nhập vào kích thước của mảng: ');
A = floor(rand(1, n) * 100);
fprintf('Mảng A ban đầu là:\n')
disp(A)

j = 1;
N = size(A, 2);
for i = 1:N
    if A(i) ~= 2
        B(j) = A(i);
        j = j + 1;
    end
end
fprintf('Mảng A sau khi xoá các số 2 bằng vòng lặp for:\n')
disp(B)
C = A(A ~= 2);
fprintf('Mảng A sau khi xoá các số 2 dùng phép toán ma trận:\n')
disp(C)