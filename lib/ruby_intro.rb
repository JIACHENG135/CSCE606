# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    res = 0
    len = arr.length
    for i in 0..len-1
        res = res + arr[i]
    end
    return res
end

def max_2_sum arr
    len = arr.length
    res = 0
    if len==0
        res = 0
    elsif len==1
        res = arr[0]
    else
        max1 = [arr[0],arr[1]].max
        max2 = [arr[0],arr[1]].min
        for i in 2..len-1
            if arr[i]>max1
                max2 = max1
                max1 = arr[i]
            elsif arr[i]>max2
                max2 = arr[i]
            end
        end
        res = max1+max2
    end
    return res
end

def sum_to_n? arr, n
    if arr.empty?
        return false
    else
        arr = arr.sort
        l = 0
        r = arr.length - 1
        while l<r 
            if arr[l]+arr[r]<n
                l += 1
            elsif arr[l]+arr[r]>n
                r -= 1
            else
                return true
            end
        end  
        return false
    end
end

# Part 2

def hello(name)
    st = 'Hello, ' + name
    return st
end

def starts_with_consonant? s
    if /^[^aeiou\W]/i.match(s) == nil 
        return false 
    else 
        return true 
    end 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    ct = 0
    res = 0
    if /[^01]/.match(s) != nil or s == ''
        # 
        return false
    end
    while ct !=s.length
         
        res += Integer(s[s.length-1-ct])*2**ct
        ct += 1

    end
    return res%4==0
end


# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def isbn= (isbn)
    if isbn == ''
      raise ArgumentError.new("Must have an ISBN number")
    end
    @isbn = isbn
  end

  def price= (price)
    price = price.to_f
    if price <= 0
      raise ArgumentError.new("Must have price")
    end
    @price = price
  end
  
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f", @price)
  end
  
end

