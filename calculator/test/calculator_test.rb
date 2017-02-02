require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator.rb'

class CalculatorTesting < Minitest::Test

  attr_reader :calc
  def setup
    @calc = Calculator.new
  end


  def test_total
    assert_equal 20, calc.total(3, 4, 6, 2, 5)
  end

  def test_add
    assert_equal 4, calc.add([1, 3])
  end

  def test_subtract
    assert_equal 5, calc.subtract([8, 3])
  end

  def test_clear
    calc.clear
    assert number_array == []
  end
end
