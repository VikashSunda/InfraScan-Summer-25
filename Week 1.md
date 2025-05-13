# MATLAB GUIDE

## INSTALLING MATLAB

1. Visit: https://www.mathworks.com/
2. Create/sign in to your MathWorks account.
3. Go to Downloads and choose a version.
4. Download the installer.
5. Run it and follow the instructions to install and activate MATLAB.

---

## MATLAB BASICS

### INTERFACE OVERVIEW

- **Workspace**: Shows active variables.
- **Script**: File containing multiple commands (`.m` files).
- **Current Folder**: File browser.
- **Command Window**: Where you type and run commands.

---

### DEFINING VARIABLES

```matlab
x = 10;
y = 5 + 3;
```

**Rules:**

- Start with a letter.
- Can include letters, numbers, underscores.
- Case-sensitive.
- Don’t use MATLAB keywords.

---

### BASIC SYMBOLS & OPERATORS

```matlab
;     % Suppresses output or separates row elements
:     % Creates ranges and slices
+ - * /  % Standard arithmetic
```

---

### BASIC COMMANDS

```matlab
clc           % Clears Command Window
clear all     % Removes all variables and functions
clearvars     % Removes specific variables
```

---

### COMMENTING

```matlab
% This is a single-line comment

%{
This is a
multi-line comment
%}
```

---

## VECTORS

```matlab
v = [1, 2, 3, 4, 5];      % Row vector
a = 1:2:10;               % [1 3 5 7 9]
v = linspace(1, 10, 5);   % [1 3.25 5.5 7.75 10]
```

---

## ARRAYS / MATRICES

```matlab
A = [1, 2, 3; 4, 5, 6];     % 2x3 numeric array
B = [5, 6; 7, 8];           % Another 2x2 matrix
```

### TYPES

```matlab
char_array = 'MATLAB';               % Character array
string_array = ["apple", "banana"];  % String array
```

---

## INDEXING & SLICING

```matlab
A = [1,2,3; 4,5,6; 7,8,9];

element = A(2, 3);         % Gets element at 2nd row, 3rd column
row = A(2, :);             % Entire 2nd row
column = A(:, 2);          % Entire 2nd column
submatrix = A(1:2, 2:3);   % Submatrix from rows 1-2, columns 2-3
```

---

## SPECIAL MATRICES

```matlab
ones(2,3);        % 2x3 matrix of ones
zeros(2,3);       % 2x3 matrix of zeros
eye(3);           % 3x3 identity matrix
randi(10,2,3);    % 2x3 matrix with random integers (1 to 10)
```

---

## ELEMENT-WISE OPERATIONS

```matlab
A = [1 2; 3 4];
B = [5 6; 7 8];

C = A .* B;   % Element-wise multiplication
D = A ./ B;   % Element-wise division
```

---

## PLOTTING

```matlab
x = 0:0.1:2*pi;
y1 = sin(x);
y2 = cos(x);

figure;
plot(x, y1, 'b-', 'LineWidth', 2);
hold on;
plot(x, y2, 'r--', 'LineWidth', 2);
xlabel('X-axis');
ylabel('Y-axis');
title('Plot of sin(x) and cos(x)');
grid on;
legend('sin(x)', 'cos(x)', 'Location', 'best');
hold off;
```

---

## CONDITIONAL STATEMENTS

```matlab
x = 5;

if x > 10
    disp('x is greater than 10');
elseif x == 10
    disp('x is exactly 10');
else
    disp('x is less than 10');
end
```

---

## LOOPS

### For Loop

```matlab
for i = 1:5
    disp(['i = ', num2str(i)]);
end
```

### While Loop

```matlab
i = 1;
while i <= 5
    disp(['i = ', num2str(i)]);
    i = i + 1;
end
```

---

## FUNCTIONS

```matlab
function out = squareIt(x)
    out = x^2;
end
```

Call this function in your script or command window:

```matlab
result = squareIt(4);
```

---

## FILE I/O

### Reading a File

```matlab
data = load('filename.txt');
```

### Writing to a File

```matlab
save('mydata.mat', 'x', 'y');      % Save variables to .mat
writematrix(A, 'output.csv');      % Save matrix to CSV
```

---

## RANDOM NUMBERS

```matlab
rand(1, 5);           % 5 random numbers between 0 and 1
randi(100, 1, 5);     % 5 random integers between 1 and 100
randn(1, 5);          % 5 normally distributed random numbers
```

---

## SUMMARY

You’ve learned:

- Basic syntax, variables, and operations
- Plotting and matrix manipulation
- Conditional statements and loops
- Defining functions
- Reading/writing data

Use this as your quick reference while working with MATLAB!
