clc;
clear all;
close all;

syms x;

f1 = nthroot(1 - x^2, 2);
fprintf('\nf1(x) = %s\n', string(f1))
fprintf('Nguyen ham cua f1(x) = %s la F1(x) = %s\n',...
    string(f1), string(int(f1)))

f2 = sin(nthroot(x, 2));
fprintf('\nf2(x) = %s\n', string(f2))
fprintf('Nguyen ham cua f2(x) = %s la F2(x) = %s\n',...
    string(f2), string(int(f2)))

f3 = (cos(x))^4;
fprintf('\nf3(x) = %s\n', string(f3))
fprintf('Tich phan tu 0 den pi/2 cua f3(x) = %s la %f\n',...
    string(f3), int(f3, 0, pi/2))

f4 = abs(x - 5);
fprintf('\nf4(x) = %s\n', string(f4))
fprintf('Tich phan tu 0 den 10 cua f4(x) = %s la %f\n',...
    string(f4), int(f4, 0, 10))

f5 = tan(x);
fprintf('\nf5(x) = %s\n', string(f5))
fprintf('Tich phan tu pi/4 den pi/3 cua f5(x) = %s la %f\n',...
    string(f5), int(f5, pi/4, pi/3))