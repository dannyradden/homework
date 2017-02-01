require 'pry'
class Calculator
  attr_accessor :number_array, :answer
  def initialize
    @number_array = number_array = []
    @answer = answer
  end


  def operate
    #binding.pry
    while true
      input = gets.chomp
      if input == "clear"
        clear
      elsif input == "="
       analyze
       puts answer
       return
      else
        number_array << input
      end
    end
  end

  def analyze
    if number_array[1] == "-"
      number_array.delete("-")
      number_array.delete("=")
      subtract(number_array)
    elsif number_array[1] == '+'
      if number_array[3] != nil
        number_array.delete("+")
        number_array.delete("=")
        total(number_array)
      else
        number_array.delete("+")
        number_array.delete("=")
        add(number_array)
      end
    end
  end

  def add(array)
    @answer = array[0].to_i + array[1].to_i
  end

  def subtract(array)
    @answer = array[0].to_i - array[1].to_i
  end

  def total(array)
    array.map! { |number| number.to_i  }
    @answer = array.inject(:+)

  end

  def clear
    number_array = []
  end
end

calculate = Calculator.new
calculate.operate
