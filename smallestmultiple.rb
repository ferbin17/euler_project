class SmallestMultiple
  def initialize
    @smallest_multiple
  end
  def caller
    find_smallest_multiple
    smallest_multiple
  end
  def find_smallest_multiple
    num = 1
    while num > 0
      flag = true
      (2...20).each do |i|
        if num % i != 0
          flag = false
          break
        end
      end
      if flag
        @smallest_multiple = num
        break
      end
      num += 1
    end
  end
  def smallest_multiple
    puts @smallest_multiple
  end
end
SmallestMultiple.new.caller
