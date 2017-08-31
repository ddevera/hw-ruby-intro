=begin
  Derek Devera
  CSCI 602 - hw-ruby-intro
=end
# Part 1

def sum arr
  total = 0
  arr.each { |num| total += num  }
  total
end

def max_2_sum arr
  if arr.length > 2
    array = arr.sort{|x, y| y <=> x}
    return array[0] + array[1]
  elsif arr.length == 1
    return arr[0]
  else
    0
  end
end

def sum_to_n? arr, n
  hash = Hash.new(0)
  arr.each do |val|
    if hash.key? val
      return true
    else
      hash[n - val] = val
    end
  end
  false
end

# Part 2

def hello name
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[^aeiou\d\W](.*)/i ? true : false
end

def binary_multiple_of_4? s
  s =~ /(^[10]*00$)|^0$/ ? true : false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize isbn, price
    raise ArgumentError if isbn == "" || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
  
end