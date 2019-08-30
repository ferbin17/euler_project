class SumSquareDiff
  def initialize
    @sum
  end
  def caller
    sum_square_diff
    dispalysum
  end
  def sum_square_diff
    sum = ((1..100).inject(0) { |sum, value| sum + value })**2
    sum_square = (1..100).inject(0) { |sum, value| sum + value**2 }
    @sum = (sum_square - sum).abs
  end
  def dispalysum
    puts @sum
  end
end
SumSquareDiff.new.caller
#25164150
