class StringCalculator

  def add(numbers)
    return default_result if numbers == ""
    return result(numbers) if numbers
  end

  private

  def result(numbers)
    number_array = numbers_from_string(numbers)
    number_array.inject{|sum,x| sum + x }
  end

  def numbers_from_string(numbers)
    numbers.scan(/\d/).map { |n| n.to_i }
  end

  def default_result
    0
  end
end