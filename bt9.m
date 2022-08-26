syms n r;

f = n*r^n;
fprintf('\nxn = %s\n', string(f))
for i = -1:2
    s1 = symsum(subs(f, r, i), n, 1, Inf);
    if (and(~isequal(class(s1), 'sym'), and(s1 ~= Inf, ~isnan(s1))))
        fprintf('Với r = %d, chuỗi hội tụ tại giá trị %.3f\n', i, s1)
    else
        fprintf('Với r = %d, chuỗi không hội tụ\n', i)
    end
end

g = 1/n^r;
fprintf('\nxn = %s\n', string(g))
for i = -1:2
    s2 = symsum(subs(f, r, i), n, 1, Inf);
    if (and(~isequal(class(s2), 'sym'), and(s2 ~= Inf, ~isnan(s2))))
        fprintf('Với r = %d, chuỗi hội tụ tại giá trị %.3f\n', i, s2)
    else
        fprintf('Với r = %d, chuỗi không hội tụ\n', i)
    end
end