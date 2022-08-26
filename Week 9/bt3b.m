figure('Name', 'Bài tập 3b', 'NumberTitle', 'off')
t1 = linspace(-20, 20, 500);
x2 = linspace(-100, 100);
x1 = 5 * (cos(t1) + t1.* sin(t1));
y1 = 5 * (sin(t1) - t1.* cos(t1));
y2  = x2;
plot(x1, y1, x2, y2);

syms t;
x = 5 * (cos(t) + t * sin(t));
y = 5 * (sin(t) - t * cos(t));
f = x - y;
j = 1;
for i = -20 : 3 : 17
    a = i;
    b = i + 3;
    c = (a + b)/2;
    if subs(f, a) * subs(f, b) < 0
        c = (a + b)/2;
        e = abs(subs(f, c));
        while e > 10^-12
            if subs(f, a) * subs(f, c) < 0
                b = c;
            else
                a = c;
            end
            c = (a + b)/2;
            e = abs(subs(f, c));
        end
        A(j) = double(subs(x, c));
        B(j) = double(subs(y, c));
        j = j + 1;
    end
end
A = sort(A);
B = sort(B);
for k = 0 : j - 2
    str = strcat('x', num2str(k));
    text(A(k + 1), B(k + 1), str);
end