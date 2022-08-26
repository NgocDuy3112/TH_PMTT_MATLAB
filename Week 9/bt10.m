A = round(rand(100) * 10000 - 5000);
while (det(A) == 0)
    A = round(rand(100) * 10000 - 5000);
end

B1 = Nghichdao_Matran(A);
disp(B1)

B2 = inv(A);
disp(B2)