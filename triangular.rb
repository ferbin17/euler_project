class TriangularNumber
  def initialize
    @triangular
  end
  def caller
    find_st_traingular
    display
  end
  def find_trinagular(number)
    (0..number).inject(0) { |sum, i| sum + i }
  end
  def find_factors(number)
    ((1..(number/2)).count{ |i| number % i == 0} + 1)
  end
  def find_st_traingular
    i = 1
    loop do
      break if (find_factors(find_trinagular(i)) > 500)
      @triangular = find_trinagular(i)
      i += 1
    end
    @triangular = find_trinagular(i)
  end
  def display
     puts @triangular
  end
end
TriangularNumber.new.caller

#76576500
