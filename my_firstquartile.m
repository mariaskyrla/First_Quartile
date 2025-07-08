function [firstquartile] = my_firstquartile(a, rows, cols)
%MY_FIRSTQUARTILE Calculates the first quartile (Q1) of matrix 'a'
%   Inputs:
%       a    - Input matrix (numeric)
%       rows - Number of rows in 'a'
%       cols - Number of columns in 'a'
%   Output:
%       firstquartile - The first quartile value of the dataset

n = rows * cols;            % Total number of elements
a = double(a);              % Convert to double for calculations

% Convert 2D matrix 'a' into a 1D array 'b'
b = zeros(1, n);
for i = 1:rows
    for j = 1:cols
        k = (i-1)*cols + j;
        b(k) = a(i,j);
    end
end

% Sort array 'b' in ascending order using bubble sort
for i = 1:n
    for j = 1:n - i
        if b(j) > b(j + 1)
            temp = b(j);
            b(j) = b(j + 1);
            b(j + 1) = temp;
        end
    end
end

% Calculate the first quartile (Q1)
n4 = n / 4;
s2 = b(n4) + b(n4 + 1);
firstquartile = s2 / 2;

% Display the first quartile
disp(['First quartile (Q1): ', num2str(firstquartile)]);

end
