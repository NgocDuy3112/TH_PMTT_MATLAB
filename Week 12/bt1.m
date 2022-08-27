syms x;

figure('Name', 'Bài tập 1', 'NumberTitle', 'off')
P(1) = symfun(1, x);
P(2) = x;
for i = 3 : 6
    P(i) = ((2*i - 1)*x*P(i - 1) - (i - 1)*P(i - 2))/i;
end
for j = 1 : 6
    ezplot(P(j));
    hold on;
end
xlabel('x')
ylabel('y')
title('Đa thức Legendre');
legend('P1', 'P2', 'P3', 'P4', 'P5', 'P6')