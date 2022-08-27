figure('Name', 'Bài tập 6d', 'NumberTitle', 'off')

theta = -2*pi:pi/100:2*pi;
r = sin(2*theta).*cos(2*theta);
polar(theta, r)
title('Hệ toạ độ cực')