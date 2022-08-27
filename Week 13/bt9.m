syms x y n;

f1 = (x^2 - y^2) / (x^2 + y^2);
fprintf('\nf1 = %s\n', string(f1))
A = limit(subs(f1, {x y}, {1/n 0}), n, inf);
B = limit(subs(f1, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end

f2 = x^2 / (x^2 + y^2);
fprintf('\nf2 = %s\n', string(f2))
A = limit(subs(f2, {x y}, {1/n 0}), n, inf);
B = limit(subs(f2, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end

f3 = (x*y + x^2) / (x^2 + y^2);
fprintf('\nf3 = %s\n', string(f3))
A = limit(subs(f3, {x y}, {1/n 0}), n, inf);
B = limit(subs(f3, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end

f4 = (x^4 + y^4) / (x^2 + y^2);
fprintf('\nf4 = %s\n', string(f4))
A = limit(subs(f4, {x y}, {1/n 0}), n, inf);
B = limit(subs(f4, {x y}, {1/n 1/n}), n, inf);
if A == B
    fprintf('Ham so co gioi han tai (0,0)\n');
else
    fprintf('Ham so khong co gioi han tai (0,0)\n');
end