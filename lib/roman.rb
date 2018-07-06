class Roman
  def initialize
    @main_symbols = {0 => nil, 1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M'}
  end

  def convert(num)
    array_of_digits = convert_num_into_array(num)

    return @main_symbols[num] if @main_symbols.has_key?(num)
    p "#{is_only_main_symbols?(array_of_digits)} input is: #{num}"
    return main_symbols_only_converter(array_of_digits) if is_only_main_symbols?(array_of_digits)

    return digit_is_2 if num == 2
    return digit_is_3 if num == 3
    return digit_is_4 if num == 4
    return digit_is_6 if num == 6
    return digit_is_9 if num == 9



  end

  private

  def digit_is_2
    output = ''
    2.times do
      output += @main_symbols[1]
    end
    output
  end

  def digit_is_3
    output = ''
    3.times do
      output += @main_symbols[1]
    end
    output
  end

  def digit_is_4
    @main_symbols[1] + @main_symbols[5]
  end

  def digit_is_6
    @main_symbols[5] + @main_symbols[1]
  end

  def digit_is_7
    output = @main_symbols[5]
    2.times do
      output += @main_symbols[1]
    end
  end

  def digit_is_8
    output = @main_symbols[5]
    3.times do
      output += @main_symbols[1]
    end
  end

  def digit_is_9
    @main_symbols[1] + @main_symbols[10]
  end

  def is_only_main_symbols?(array_of_digits)
    k = 0
    array_of_results = []
    while k < array_of_digits.length do
      array_of_results << @main_symbols.has_key?(array_of_digits[k])
      k += 1
    end
    !array_of_results.include? false

  end

  def convert_num_into_array(num)
    array_of_digits = num.to_s.split('').map(&:to_i)
    array_of_digits.reverse!

    i = 0
    while i < array_of_digits.length do
      if i == 0
        i += 1
      else
        array_of_digits[i] = array_of_digits[i] * (10 ** i)
        i += 1
      end
    end
    array_of_digits.reverse!
  end

  def main_symbols_only_converter(array_of_digits)
    j = 0
    output = ''
    while j < array_of_digits.length do
      if !array_of_digits[j].zero?
        output += @main_symbols[array_of_digits[j]]
      end
      j += 1
    end
    output
  end
end
