class ThPrime
  def initialize
    @prime
  end
  def caller
    find_thprime
    display
  end
  def find_thprime
    count = 1
    num = 2
    while count <= 10001
      if is_prime(num)
        count += 1
        @prime = num
      end
      num += 1
    end
  end
  def is_prime(number)
    (2..(Integer.sqrt(number))).each do |num|
      return false if number % num == 0
    end
  end
  def display
    puts @prime
  end
end
ThPrime.new.caller
