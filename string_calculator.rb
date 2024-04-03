class StringCalculator
  def add(numbers_str)
    raise "Invalid input" if numbers_str.include?(",\n") || numbers_str.end_with?(",")
    numbers = parse_numbers(numbers_str)
    ensure_no_negative_numbers(numbers)
    numbers.sum
  end

  private

  def parse_numbers(numbers_str)
    delimiter = extract_delimiter(numbers_str)
    numbers_str.split(/#{delimiter}|[\n,]/).map(&:to_i)
  end

  def extract_delimiter(numbers_str)
    match = numbers_str.match(%r{//(.+)\n})
    match ? Regexp.escape(match[1]) : ","
  end

  def ensure_no_negative_numbers(numbers)
    negative_numbers = numbers.select { |num| num < 0 }
    raise "Negative numbers not allowed: #{negative_numbers.join(',')}" if negative_numbers.any?
  end
end
