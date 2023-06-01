require_relative 'solver'
require 'rspec'

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(solver.factorial(0)).to eq(1)
    end
    it 'returns a correct factorial value when given a positive integer' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(6)).to eq(720)
    end
    it 'raises an exception when give a negative integer' do
      expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe '#reverse' do
    it 'returns empty string when given empty string' do
      expect(solver.reverse('')).to eq('')
    end
    it 'returns a correct reversed string when given a non-empty string' do
      expect(solver.reverse('hello')).to eq('olleh')
    end
  end
end
