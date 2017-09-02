=begin
  Derek Devera
  CSCI 602 - hw-ruby-intro
=end

# Part 1
def sum arr
  arr.inject(0) { |total, a| total += a } # from class
end

def max_2_sum arr
  return case arr.length
    when 0  ; 0 #no elements in arr, return 0
    when 1  ; arr[0] #one element, return element value
    else array = arr.sort{|x, y| y <=> x} ; array[0] + array[1] #return top 2
  end
end

def sum_to_n? arr, n
  arr.permutation(2).to_a.each { |first, second|
    if first+second == n #value = n, no need to test
      return true
    end
  }
  false
end

# Part 2
def hello name
  "Hello, #{name}"
end

def starts_with_consonant? s #no vowels, numbers, special chars for 1st char
  s =~ /^[^aeiou\d\W]/i
end

def binary_multiple_of_4? s #4 is 0b100
  s =~ /^[10]*00$|^0$/
end

# Part 3
class BookInStock
  attr_accessor :isbn, :price #thx ruby
  
  def initialize isbn, price
    raise ArgumentError if isbn == "" || price <= 0 #not 0 or negative
    @isbn = isbn
    @price = price
  end

  def price_as_string
    '$%.2f' % @price #display $ with 2 decimal places (String#%)
  end
  
end