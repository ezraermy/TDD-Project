class Solver
    def factorial(n)
        raise ArgumentError, "Argument must be non-negative" if n.negative?
        return 1 if n.zero?
        result = 1
        (1..n).each do |i|
            result *= i
        end
        result
    end
end