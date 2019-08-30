class SumPower
  def initialize
    @sumofpower
  end
  def caller
    # num = 2**1000
    num = 2**15
    find(num)
    display
  end
  def find(num)
    num = num.to_s.chars
    @sumofpower = num.inject(0){ |sum, elements| sum + elements.to_i }
  end
  def display
    puts @sumofpower
  end
end
SumPower.new.caller
