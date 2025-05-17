%% 2(a) Linear Spaces and Evaluating Functions
x = linspace(0, 2*pi, 100);
y_exp = exp(x);
y_sin = sin(x);

%% 2(b)  Plotting Single Variable Functions
figure;
plot(x, sin(x), 'r--', 'DisplayName', 'sin(x)'); 
hold on;
plot(x, cos(x), 'b:', 'DisplayName', 'cos(x)');
legend;
xlabel('x'); ylabel('Function Value');
title('Plot of sin(x) and cos(x)');

%% 2(c) Using Meshgrid to Generate 2D Spaces
r = linspace(-2*pi, 2*pi, 100);
s = linspace(-2*pi, 2*pi, 100);
[X, Y] = meshgrid(r, s);
Z = sin(X + Y);

%% 2(d) Surface Plot
% Surface plot
figure;
surf(X, Y, Z);
colorbar;
title('3D Surface Plot of sin(x + y)');

% Contour plot
figure;
contour(X, Y, Z, 20);
colorbar;
title('Contour Plot of sin(x + y)');
