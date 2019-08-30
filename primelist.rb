class Prime
  def initialize
    @sum
  end
  def caller
    list_primes(2,2000000)
    display
  end
  def is_prime(number)
    (2..(Integer.sqrt(number))).each do |num|
      return false if number % num == 0
    end
  end
  def list_primes(lower,upper)
    prime_list = []
    (lower..upper).each do |i|
      if is_prime(i)
        prime_list << i
      end
    end
    @sum = prime_list.inject(0) { |sum, elements|  sum + elements}
  end
  def display
    puts @sum
  end
end
Prime.new.caller
