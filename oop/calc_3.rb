# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

module SimpleMath
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

class SimpleCalculator
  include SimpleMath
  # def add(first_number, second_number)
  #   first_number + second_number
  # end

  # def subtract(first_number, second_number)
  #   first_number - second_number
  # end

  # def multiply(first_number, second_number)
  #   first_number * second_number
  # end

  # def divide(first_number, second_number)
  #   first_number / second_number
  # end
end

class FancyCalculator
  include SimpleMath
  # def add(first_number, second_number)
  #   first_number + second_number
  # end

  # def subtract(first_number, second_number)
  #   first_number - second_number
  # end

  # def multiply(first_number, second_number)
  #   first_number * second_number
  # end

  # def divide(first_number, second_number)
  #   first_number / second_number
  # end
  def square_root(number)
    Math.sqrt(number)
  end
end

class WhizBangCalculator < FancyCalculator
  # def add(first_number, second_number)
  #   first_number + second_number
  # end

  # def subtract(first_number, second_number)
  #   first_number - second_number
  # end

  # def multiply(first_number, second_number)
  #   first_number * second_number
  # end

  # def divide(first_number, second_number)
  #   first_number / second_number
  # end

  # def square_root(number)
  #   Math.sqrt(number)
  # end

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

calc_1 = WhizBangCalculator.new

p calc_1.add(5, 2)
p calc_1.square_root(5)
