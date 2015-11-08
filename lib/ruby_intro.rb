# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return (arr.length==0)?0:arr.inject(:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return (arr.length==0)?0:arr.max(2).inject(:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return (arr.length==0 && n==0) || !!arr.combination(2).detect { |a,b| a+b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (s.length==0 || !s[0].match(/[a-zA-Z]/))?false:!(['a','e','i','o','u'].include? s[0].downcase)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return s.match(/^\d+$/)?(s.to_i % 4 == 0):false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = Float(price)
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price_as_string()
    return "$" + sprintf("%.2f", price)
  end
end
