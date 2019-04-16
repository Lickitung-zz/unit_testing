require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end
  describe '#subtract' do
    it 'should return the difference of two numbers' do
        calculator = Calculator.new
        result = calculator.subtract(3, 1)
        expect(result).to eq(2)
    end
    it 'should return the difference of numbers that are negative' do
        calculator = Calculator.new
        result = calculator.subtract(3, -1)
        expect(result).to eq(4)
    end
  end
  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(2, 2)
      expect(result).to eq(4)
    end
    it 'should return the product of numbers that are negative' do
        calculator = Calculator.new
        result = calculator.multiply(2, -2)
        expect(result).to eq(-4)
    end
  end
  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(2, 2)
      expect(result).to eq(1)
    end
    it 'should return the quotient of numbers that are negative' do
        calculator = Calculator.new
        result = calculator.divide(2, -2)
        expect(result).to eq(-1)
    end
  end
  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(2)
      expect(result).to eq(4)
    end
    it 'should return the square of a negative number' do
        calculator = Calculator.new
        result = calculator.square(-2)
        expect(result).to eq(4)
    end
  end
  describe '#power' do
    it 'should return the power of a number with its exponent' do
      calculator = Calculator.new
      result = calculator.power(2, 1)
      expect(result).to eq(2)
    end
    it 'should return the power of a negative number' do
        calculator = Calculator.new
        result = calculator.power(-2, 1)
        expect(result).to eq(-2)
    end
    it 'should return the power of a negative exponent' do
        calculator = Calculator.new
        result = calculator.power(2, -1)
        expect(result).to eq(1/2)
      end
  end
end