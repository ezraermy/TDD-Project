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
end
