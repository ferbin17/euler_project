class Sum
  def initialize
    @sum = 0
    @multiples = []
  end
  def caller
    find_numbers
    find_sum
  end
  def find_numbers
    @multiples = (1...1000).select{ |value| value % 3 == 0 || value % 5 == 0 }
  end
  def find_sum
    @sum = @multiples.inject(0){ |sum, value| sum + value }
    puts @sum
  end
end
Sum.new.caller
