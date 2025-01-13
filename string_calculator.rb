class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    num = []

    if numbers.start_with?("//")
      delimiter, input = numbers[2..].split("\n", 2)
      input.split(delimiter).reject(&:empty?).map(&:to_i).sum
    else
      num = numbers.split(/,|\n/).reject(&:empty?).map(&:to_i)

      negatives = num.select(&:negative?)

      raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
      num.sum
    end
  end
end
