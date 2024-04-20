# DEFINE A METHOD TO GENERATE FIBONACCI SEQUENCE ITERATIVELY
def fibs(n)
  # INITIALIZE ARRAY WITH FIRST TWO FIBONACCI NUMBERS
  fib_sequence = [0, 1]
  # ITERATE FROM INDEX 2 TO N TO GENERATE FIBONACCI SEQUENCE
  (2..n).each do |i|
    # CALCULATE NEXT FIBONACCI NUMBER AND APPEND TO THE SEQUENCE
    fib_sequence << fib_sequence[i - 1] + fib_sequence[i - 2]
  end
  # RETURN THE FIRST N FIBONACCI NUMBERS
  fib_sequence.first(n)
end

# DEFINE A METHOD TO GENERATE FIBONACCI SEQUENCE RECURSIVELY
def fibs_rec(n, fib_sequence = [0, 1])
  # RETURN THE FIRST N FIBONACCI NUMBERS IF N IS LESS THAN OR EQUAL TO 2
  return fib_sequence.first(n) if n <= 2

  # RECURSIVELY GENERATE FIBONACCI SEQUENCE
  fibs_rec(n - 1, fib_sequence << fib_sequence[-1] + fib_sequence[-2])
end

# DEFINE A METHOD TO MERGE TWO SORTED ARRAYS
def merge(left, right)
  # INITIALIZE AN EMPTY ARRAY TO STORE MERGED ELEMENTS
  sorted_array = []
  # CONTINUE MERGING UNTIL ONE OF THE ARRAYS IS EMPTY
  until left.empty? || right.empty?
    # COMPARE FIRST ELEMENTS OF BOTH ARRAYS AND APPEND THE SMALLER ONE
    if left.first <= right.first
      sorted_array << left.shift
    else
      sorted_array << right.shift
    end
  end
  # RETURN THE MERGED ARRAY
  sorted_array + left + right
end

# DEFINE A METHOD TO PERFORM MERGE SORT RECURSIVELY
def merge_sort(array)
  # RETURN THE ARRAY IF IT CONTAINS 0 OR 1 ELEMENTS
  return array if array.length <= 1

  # CALCULATE THE MIDDLE INDEX OF THE ARRAY
  mid = array.length / 2
  # RECURSIVELY PERFORM MERGE SORT ON LEFT AND RIGHT HALVES OF THE ARRAY
  left = merge_sort(array[0...mid])
  right = merge_sort(array[mid..])

  # MERGE THE SORTED LEFT AND RIGHT HALVES
  merge(left, right)
end

# TESTING FIBONACCI METHODS
puts "Fibonacci sequence (iterative): #{fibs(8)}"
puts "Fibonacci sequence (recursive): #{fibs_rec(8)}"

# TESTING MERGE SORT METHOD
puts "Sorted array using merge sort: #{merge_sort([3, 2, 1, 13, 8, 5, 0, 1])}"
puts "Sorted array using merge sort: #{merge_sort([105, 79, 100, 110])}"
