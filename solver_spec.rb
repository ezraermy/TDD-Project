describe Facrorial do
    describe "#factorial" do
        it "returns 1 when given 0" do
            expect(Factorial.new.factorial(0)).to_eq(1)
        end
        it "returns a correct factorial value when given a positive integer" do
            expect(Factorial.new.factorial(5)).to_eq(120)
            expect(Factorial.new.factorial(6)).to_eq(720)
        end
        it "raises an exception when give a negative integer" do
            expect(Factorial.new.factorial(-1).to_raise_error(ArgumentError))
        end
    end
end