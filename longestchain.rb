class LongestChain
  def initialize
    @longestchain
    @length = 0
  end
  def caller
    find_longest_chain
    display
  end
  def find_chain(number)
    chain = [number]
    while (number > 1)
      if number % 2 == 0
        number = number / 2
      else
        number = (3 * number) + 1
      end
      chain << number
      return nil if number < 1
    end
    chain
  end
  def find_longest_chain
    1.upto(1000000) do |i|
      length = find_chain(i).length
      if(@length < length)
        @length = length
        @longestchain = find_chain(i)
      end
    end
  end
  def display
    puts "Starting : #{@longestchain[0]}\nLength : #{@length}"
  end
end
LongestChain.new.caller
