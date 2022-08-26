syms x y z;

u1 = [sin(x) + cos(z), x^2 + 3*x - 4, log(x) + y^2 + sqrt(z)];
fprintf('\nMa trận Jacobi của vector u1 là:\n');
disp(simplify(jacobi_matrix(u1)));

u2 = [5*x^3 - x^2*y^2 + tan(x), exp(x^2 + y^2 + z^2), x^3*y*z^2 - x^2*y - x^3*z];
fprintf('\nMa trận Jacobi của vector u2 là:\n');
disp(simplify(jacobi_matrix(u2)));

u3 = [cos(x) + sin(x) + tan(x), log(x - y + z), x^3 - y^3 + z^3];
fprintf('\nMa trận Jacobi của vector u3 là:\n');
disp(simplify(jacobi_matrix(u3)));

u4 = [2*x^2 + 3*y^2 + 2*x*y*z, cos(x*y)*sin(x*z)*tan(y*z), exp(x + y)*log(x*y*z)];
fprintf('\nMa trận Jacobi của vector u4 là:\n');
disp(simplify(jacobi_matrix(u4)));

u5 = [sqrt(x + log(y*z)), x/(z^2 + y^3), y*z/sqrt(x^2-1)];
fprintf('\nMa trận Jacobi của vector u5 là:\n');
disp(simplify(jacobi_matrix(u5)));