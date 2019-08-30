class Pythagoras
  def initialize
    @product
  end
  def caller
    find_product
    display
  end
  def find_product
    1000.downto(1) do |k|
      k.downto(1) do |j|
        j.downto(1) do |i|
           if(i**2 + j**2 == k**2)
             if(i + j + k == 1000)
               @product = i * j * k
             end
           end
        end
      end
    end
  end
  def display
    puts @product
  end
end
Pythagoras.new.caller
