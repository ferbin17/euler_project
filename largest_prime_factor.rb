class PrimeFactor
  def initialize
    @largestprimefactors
    @number = 600851475143
  end
  def caller
    find_prime_factor
    find_largest
  end
  def find_prime_factor
    (2..(@number/2)).each do |i|
      if((@number % i == 0) && is_prime(i))
        @largestprimefactors = i
      end
    end
  end
  def is_prime(number)
    (2..(Integer.sqrt(number))).each do |num|
      return false if number % num == 0
    end
  end
  def find_largest
    puts @largestprimefactors
  end
end
PrimeFactor.new.caller
