A = [1 2 3; 5 6 9; 10 11 15];

fprintf('Ma trận A =\n')
print_matrix(A)

A_u = Matran_TG_Tren(A);
fprintf('Ma trận tam giác trên của ma trận A =\n')
print_matrix(A_u)

A_l = Matran_TG_Duoi(A);
fprintf('Ma trận tam giác dưới của ma trận A =\n')
print_matrix(A_l)

A_d = Matran_DuongCheo(A);
fprintf('Ma trận đường chéo của ma trận A =\n')
print_matrix(A_d)