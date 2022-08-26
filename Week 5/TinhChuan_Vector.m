function norm = TinhChuan_Vector(x, type)
    switch (type)
    case 1
        %norm = sum(abs(x));
        for i = 1:n
            norm = norm + abs(x(i));
        end
    case 2
        %norm = sqrt(sum(x.^2));
        for i = 1:n
            norm = norm + x(i)^2;
            norm = sqrt(norm);
        end
    case 0
        %norm = max(abs(x));
        for i = 1:n
            if (norm < abs(x(i)))
                norm = abs(x(i));
            end
        end
    otherwise
        fprintf('Khong co chuan %s\n', type)
        return
    end
end