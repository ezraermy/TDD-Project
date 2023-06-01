require_relative "solver"
require "rspec"

describe Solver do
    let (:solver) { Solver.new }

    describe "#factorial" do
        it "returns 1 when given 0" do
            expect(solver.factorial(0)).to eq(1)
        end
        it "returns a correct factorial value when given a positive integer" do
            expect(solver.factorial(5)).to eq(120)
            expect(solver.factorial(6)).to eq(720)
        end
        it "raises an exception when give a negative integer" do
            expect {solver.factorial(-1)}.to raise_error(ArgumentError)
        end
    end

    describe "#reverse" do
        it "returns empty string when given empty string" do
            expect(solver.reverse("")).to eq("")
        end
        it "returns a correct reversed string when given a non-empty string" do
            expect(solver.reverse("hello")).to eq("olleh")
        end
    end
    
    describe "#fizzbuzz" do
        it "returns 'Fizz' when a given number is divisible by 3" do
            expect(solver.fizzbuzz(3)).to eq("Fizz")
            expect(solver.fizzbuzz(6)).to eq("Fizz")
        end

        it "returns 'Buzz' when a given number is divisible by 5" do
            expect(solver.fizzbuzz(5)).to eq("Buzz")
            expect(solver.fizzbuzz(10)).to eq("Buzz")
        end

        it "returns 'FizzBuzz' when a given number is divisible by 3 and 5" do
            expect(solver.fizzbuzz(15)).to eq("FizzBuzz")
            expect(solver.fizzbuzz(30)).to eq("FizzBuzz")
        end

        it "returns a given number when a given number is not divisible by 3 nor 5" do
            expect(solver.fizzbuzz(7).to eq("7"))
            expect(solver.fizzbuzz(11).to eq("11"))
        end
    end

end
