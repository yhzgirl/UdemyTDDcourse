class StringCalculator

  def add(numbers)
    return default_result if numbers == ""
    return result(numbers) if numbers
  end

  private

  def result(numbers)
    striped_string = numbers.scan(/\d/)
    num_arry = striped_string.map { |n| n.to_i }
    num_arry.inject{|sum,x| sum + x }
  end

  def default_result
    0
  end
end