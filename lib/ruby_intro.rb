# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each { |num| total += num  }
  return total
end

def max_2_sum arr
  if (arr.length > 2)
    array = arr.sort{|x, y| y <=> x}
    return array[0] + array[1]
  elsif (arr.length == 1)
    return arr[0]
  else
    return 0
  end
end

def sum_to_n? arr, n
  hash = Hash.new(0)
  arr.each do |val|
   if hash.key? val
    return true
   else
    hash[n-val] = val
   end
  end
  return false
end

# Part 2

def hello name
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[^aeiou\d\W](.*)/i ? true : false
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
