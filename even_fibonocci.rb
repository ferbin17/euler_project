class Fibonacci
  def initialize
    @fibonacci_series = [1,2]
    @even_fibonacci_series = []
    @sum = 0
  end
  def caller
    find_fibonacci_series
    find_even_fibonacci_series
    find_sum
  end
  def find_fibonacci_series
    i = 2
    while i > 0
      break if (@fibonacci_series[i-1] + @fibonacci_series[i-2]) > 4000000
      @fibonacci_series.push(@fibonacci_series[i-1] + @fibonacci_series[i-2])
      i += 1
    end
  end
  def find_even_fibonacci_series
    @even_fibonacci_series = @fibonacci_series.select { |value| value % 2 == 0 }
  end
  def find_sum
    @sum = @even_fibonacci_series.inject(0) { |sum, value| sum + value }
    puts @sum
  end
end
Fibonacci.new.caller
