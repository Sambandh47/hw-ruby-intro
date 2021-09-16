# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for i in arr do
    sum = sum + i
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    max_array = arr.max(2){ |a, b| a<=>b}
    return sum(max_array)
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0 or arr.length() == 1
    return false
  end
  (0..arr.length-1).any? do |i|
    arr[i+1..arr.length].any? { |x| x + arr[i] == n }
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  a1 = [65,69,73,79,85,97,101,105,111,117]
  first_letter_of_string = s[0]
  ascii_value = first_letter_of_string.ord()
  if ((ascii_value >= 65 and ascii_value<= 90) or (ascii_value>=97 and ascii_value<=122))
    if a1.include?(ascii_value)
      return false
    else
      return true
    end
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  if s.count('10') != s.size
    return false
  end
  if s[s.size - 1]=='0' and s[s.size - 2]=='0'
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    @isbn = isbn
    @price = price
    if isbn.length==0 or price<=0
      raise ArgumentError
    end
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    return "$%.2f" % price
  end
end
