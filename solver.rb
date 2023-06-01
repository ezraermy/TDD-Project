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

    def reverse(str)
        result = ""
        return result if str.empty?
        (0..str.length - 1).each do |i|
            result += str[str.length - 1 - i]
        end
        result
    end

    def fizzbuzz(n)
        return "FizzBuzz" if (n % 3).zero? && (n % 5).zero?
        return "Fizz" if (n % 3).zero?
        return "Buzz" if (n % 5).zero?
        n.to_s
    end
end