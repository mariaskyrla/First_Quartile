# First Quartile Calculation in MATLAB

This MATLAB function computes the first quartile (Q1) of a numeric matrix. It manually flattens the matrix into a vector, sorts it using bubble sort, and calculates the median of the lower 25% of the data points.

## Features

- Manual data flattening and sorting without built-in functions
- Simple and clear implementation of quartile calculation
- Useful for understanding basic statistical programming concepts in MATLAB

## Usage

Call the function with the matrix and its dimensions:

```matlab
q1 = my_firstquartile(a, rows, cols);
