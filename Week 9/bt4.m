figure('Name', 'Bài tập 4a', 'NumberTitle', 'off')
A = [1; 3];
B = [-3; 5];
C = [2; -4];
D = [-1; -3];
O = [0; 0];
plot(A(1), A(2), 'ro', B(1), B(2), 'bs', C(1), C(2), 'm<', D(1), D(2), 'y>', O(1), O(2), 'kd');
figure('Name', 'Bài tập 4b', 'NumberTitle', 'off')
X1 = [A B];
X2 = [O C];
X3 = [D B];
X4 = [C B];
X5 = [O A];
line(X1(1 ,:), X1(2 , :), 'LineWidth', 2);
line(X2(1 ,:), X2(2 , :), 'LineWidth', 2);
line(X3(1 ,:), X3(2 , :), 'LineWidth', 2);
line(X4(1 ,:), X4(2 , :), 'LineWidth', 2);
line(X5(1 ,:), X5(2 , :), 'LineWidth', 2);
figure('Name', 'Bài tập 4c', 'NumberTitle', 'off')
Y1 = [A B C A];
Y2 = [A B D A];
Y3 = [A C D A];
Y4 = [A B D C A];
Y5 = [A C D O A];
line(Y1(1 ,:), Y1(2 , :), 'Color', 'r', 'LineWidth', 2.5);
line(Y2(1 ,:), Y2(2 , :), 'Color', 'y', 'LineWidth', 2);
line(Y3(1 ,:), Y3(2 , :), 'Color', 'b', 'LineWidth', 1.5);
line(Y4(1 ,:), Y4(2 , :), 'Color', 'k', 'LineWidth', 1);
line(Y5(1 ,:), Y5(2 , :), 'Color', 'g', 'LineWidth', 0.5);