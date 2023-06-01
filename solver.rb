class Solver
  def factorial(num)
    raise ArgumentError, 'Argument must be non-negative' if num.negative?
    return 1 if num.zero?

    result = 1
    (1..num).each do |i|
      result *= i
    end
    result
  end

  def reverse(str)
    result = ''
    return result if str.empty?

    (0..str.length - 1).each do |i|
      result += str[str.length - 1 - i]
    end
    result
  end
end
