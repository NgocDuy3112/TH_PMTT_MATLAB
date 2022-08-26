x = rand(10^6, 1);
sum = 0;
for i = 1:10^6
    sum = sum + x(i)^2;
end
fprintf('Tong cac phan tu cua vecto x la %d\n', sum)