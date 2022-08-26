function X = tamgiacvuong(X0, a, b)
    A = X0;
    B = [X0(1), X0(2) + a];
    C = [X0(1) + b, X0(2)];
    X = [A; B; C];
    
    figure('Name', 'Bài tập 9', 'NumberTitle', 'off',...
        'units','normalized','outerposition',[0 0 1 1])
    xlim([-50 50]);
    ylim([-50 50]);
    x_axis = [A(1), B(1), C(1)];
    y_axis = [A(2), B(2), C(2)];
    labels = {'A', 'B', 'C'};
    title('Tam giác vuông ABC');
    line([A(1), B(1)], [A(2), B(2)], 'Color', 'r');
    hold on;
    line([B(1), C(1)], [B(2), C(2)], 'Color', 'r');
    hold on;
    line([C(1), A(1)], [C(2), A(2)], 'Color', 'r');
    text(x_axis, y_axis, labels,...
        'VerticalAlignment','bottom',...
        'HorizontalAlignment','right');
end