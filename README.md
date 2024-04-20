# Recursion Project

## Introduction

This project provides implementations of generating the Fibonacci sequence and performing Merge Sort using recursion in Ruby.

## Fibonacci Sequence

### `fibs(n)`

- Generates the Fibonacci sequence iteratively up to the nth number.
- Initializes an array with the first two Fibonacci numbers (0 and 1).
- Iterates from index 2 to n to generate the Fibonacci sequence.
- Returns the first n Fibonacci numbers.

### `fibs_rec(n, fib_sequence = [0, 1])`

- Generates the Fibonacci sequence recursively up to the nth number.
- Returns the first n Fibonacci numbers.
- Uses a recursive approach to generate the Fibonacci sequence.

## Merge Sort

### `merge(left, right)`

- Merges two sorted arrays into a single sorted array.
- Initializes an empty array to store merged elements.
- Continues merging until one of the arrays is empty.
- Compares the first elements of both arrays and appends the smaller one.

### `merge_sort(array)`

- Performs Merge Sort recursively on an input array.
- Returns the sorted array.
- Divides the input array into halves recursively until each sub-array contains a single element.
- Merges the sorted sub-arrays back together.

## Testing

The script includes testing code to verify the correctness of the implemented methods. It generates Fibonacci sequences and sorts arrays using Merge Sort, displaying the results for validation.

## Usage

To use the provided methods for generating the Fibonacci sequence and performing Merge Sort, simply execute the Ruby script. It demonstrates how to call each method and provides sample output.

Feel free to experiment with different inputs and explore the behavior of the Fibonacci and Merge Sort implementations.