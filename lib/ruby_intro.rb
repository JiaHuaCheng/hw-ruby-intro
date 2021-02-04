# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
    # to calculate the sum of the elements in the array
    if arr.length() == 0
        return 0
    end
  
    ans = 0
    
    for num in arr do
        ans = num + ans
    end
    return ans
end


def max_2_sum(arr)
  # return the sum of the first two biggest in the array
    if arr.length() == 0
        return 0
    end
    
    if arr.length() == 1
        return arr[0]
    end
    
    return arr.sort.reverse[0] + arr.sort.reverse[1]
end


def sum_to_n?(arr, n)
    # to find whether there are a pair number which sum is equal to n
    length = arr.length()
  
    for i in 0...length-1
        for j in i+1 ...length
            if arr[i]+arr[j] == n
                return true
            end
        end
    end
    return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(s)
    # YOUR CODE HERE
    if s.length == 0
        return false
    end
    
    if !s[0].match(/^[[:alpha:]]$/)
        return false
    end
    
    str = s.downcase
    vowel = ['a', 'e', 'i', 'o', 'u']
    if str.start_with?(*vowel)
        return false     
    end
    return true
end


def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s.length == 0 # take care empty string
        return false
  end
  
  arr = s.split("") # handle non-binary string
  for char in arr do
      if !char.match(/[[:digit:]]/) || char.match(/[2-9]/)
          return false
      end
  end
  binary_number = s.to_i(2)
  if binary_number % 4 == 0
      return true
  end
  return false
end

# Part 3

class BookInStock
    # YOUR CODE HERE
    
        # Declare Attributes
        # initialize is constructor
        def initialize(isbn, price)
            if price <= 0
                raise ArgumentError.new("the price is <= 0")
            end
            if isbn == ""
                raise ArgumentError.new("the isbn is empty")
            end
            @isbn = isbn
            @price = price.round(2)      
        end
        
        # getter
        def isbn
            @isbn
        end
        # getter
        def price
            @price
        end
        #setter    
        def isbn=(isbn)
            @isbn = isbn
        end
        #setter
        def price=(price)
            @price = price
        end

        def price_as_string
            return "$%0.2f"%[@price.to_s]
            
        end
end


=begin
Define a class `BookInStock` which represents a book with an ISBN
number, `isbn`, and price of the book as a floating-point number,
`price`, as attributes. Run associated tests via:  `$ rspec -e 'getters and setters' spec/part3_spec.rb` 

The constructor should accept the ISBN number
(a string, since in real life ISBN numbers can begin with zero and can
include hyphens) as the first argument and price as second argument, and
should raise `ArgumentError` (one of Ruby's built-in exception types) if
the ISBN number is the empty string or if the price is less than or
equal to zero.  Include the proper getters and setters for these
attributes. Run associated tests via:  `$ rspec -e 'constructor' spec/part3_spec.rb`

Include a method `price_as_string` that returns the price of
the book formatted with a leading dollar sign and two decimal places, that is, a price
of 20 should format as "$20.00" and a price of 33.8 should format as
"$33.80". Run associated tests via:  `$ rspec -e '#price_as_string' spec/part3_spec.rb`
=end