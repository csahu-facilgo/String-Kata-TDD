class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers.split(/,|\n/).reject(&:empty?).map(&:to_i).sum
  end
end
