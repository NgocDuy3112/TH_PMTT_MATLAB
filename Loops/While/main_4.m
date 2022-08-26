r = 0;
count = 0;

while (r <= 0.95)
    count = count + 1;
    r = rand;
    fprintf('Sau lan sinh thu %d: %.5f\n', count, r)
end

fprintf('Can %d lan de sinh ra mot so lon hon 0.95\n', count);