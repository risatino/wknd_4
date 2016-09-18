# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

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

# Copy your driver code from the previous exercise below:

calculation_1 = FancyCalculator.new

p calculation_1.add(22, 3)

