figure('Name', 'Bài tập 1', 'NumberTitle', 'off')
A = [5 2 1; 8 7 3; 9 8 6];
n = size(A, 1) * size(A, 2);
x = reshape(A, [1, n]);
bar(x);
xlabel('Phần tử của ma trận A');
ylabel('Giá trị');
title('Đồ thị cột biểu diễn ma trận A');