x = input('Nhap vao mot vecto, nhap kem cap ngoac vuong []: ');
M = intmin;
m = intmax;
n = length(x);

for i = 1:n
    if (M < x(i))
        M = x(i);
    end
    if (m > x(i))
        m = x(i);
    end
end
%M = max(x);
%m = min(x);
fprintf('Gia tri lon nhat cua vecto la %.3f\nGia tri nho nhat cua vecto la %.3f\n', M, m)
