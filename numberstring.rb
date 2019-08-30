class NumberString
  def initialize
    @digit_hash = { "1" => "one", "2" => "two", "3" => "three", "4" => "four",
                       "5" => "five", "6" => "six", "7" => "seven", "8" => "eight",
                       "9" => "nine", "10" => "ten",  "11" => "eleven",
                       "12" => "twelve", "13" => "thirteen", "15" => "fifteen",
                       "18" => "eighteen", "20" => "twenty", "30" => "thirty", "40" => "forty",
                       "50" => "fifty", "60" => "sixty", "70" => "seventy",
                       "80" => "eighty", "90" => "ninety" }
    @count
  end
  def caller(arg)
    lower = arg[0].to_i
    upper = arg[1].to_i
    count_letter(num_array(lower, upper))
    display
  end
  def num_array(lower, upper)
    word_array = []
    (lower..upper).each do |number|
      word_array << find_string(number)
    end
    word_array
  end
  def find_string(number)
    number_string = number.to_s
    length = number_string.length
    case length
    when 1
      return @digit_hash[number_string]
    when 2
      if @digit_hash[number_string] != nil
        return @digit_hash[number_string]
      else
        first = number/10.0
        case first
        when (1.0..1.9)
          return "#{@digit_hash[number_string[1]]}teen"
        else
          temp = (number_string[0].to_i)*10
          string = "#{@digit_hash[temp.to_s]} #{@digit_hash[number_string[1]]}"
          return string
        end
      end
    when 3
      if number%100 == 0
        string = " #{@digit_hash[number_string[0]]} hundred"
        return string
      else
        temp = number_string[1,2].to_i
        string = "#{@digit_hash[number_string[0]]} hundred and #{find_string(temp)}"
        return string
      end
    when 4
      if number%1000 == 0
        string = " #{@digit_hash[number_string[0]]} thousand"
        return string
      else
        temp = number_string[1,3].to_i
        string = "#{@digit_hash[number_string[0]]} thousand #{find_string(temp)}"
        return string
      end
    end
  end
  def count_letter(array)
    count = 0
    array.each do |elements|
      count += (elements.gsub(" ","")).length
    end
    @count = count
  end
  def display
    puts @count
  end
end
NumberString.new.caller(ARGV)
