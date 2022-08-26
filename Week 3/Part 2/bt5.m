x = input('Nhap vao mot vecto kem cap ngoac vuong []: ');
n = length(x);

count_neq = 0;
count_zero = 0;
count_pos = 0;

for i = 1:n
    if (x(i) < 0)
        count_neq = count_neq + 1;
    elseif(x(i) == 0)
        count_zero = count_zero + 1;
    else
        count_pos = count_pos + 1;
    end
end

disp('Trong vecto vua nhap co:')
fprintf('%d phan tu am\n', count_neq)
fprintf('%d phan tu bang 0\n', count_zero)
fprintf('%d phan tu duong\n', count_pos)