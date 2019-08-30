class PalindromeProduct
  def initialize
    @largest_palindrome = { firstnumber: 0, secondnumber: 0}

  end
  def caller
    find_largest
    largest_palindrome
  end
  def find_largest
    largest = 0
    999.downto(100) do |i|
      999.downto(100) do |j|
        product = i * j
        if largest < product
          if is_palindrome(product)
            @largest_palindrome[:firstnumber] = i
            @largest_palindrome[:secondnumber] = j
            largest = product
          end
        end
      end
    end
  end
  def is_palindrome(number)
    number_string = number.to_s
    return number_string == number_string.reverse
  end
  def largest_palindrome
    puts "#{@largest_palindrome[:firstnumber]} x #{@largest_palindrome[:secondnumber]} = #{@largest_palindrome[:firstnumber] * @largest_palindrome[:secondnumber]} is the largest palindrome in 3 digits multiplication"
  end
end
PalindromeProduct.new.caller
