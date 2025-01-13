class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, input = numbers[2..].split("\n", 2)
      input.split(delimiter).reject(&:empty?).map(&:to_i).sum
    else
      numbers.split(/,|\n/).reject(&:empty?).map(&:to_i).sum
    end
  end
end
