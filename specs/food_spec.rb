require('minitest/autorun')
require('minitest/rg')
require_relative('../food')
require_relative('../customer')
require_relative('../pub')


class TestFood < Minitest::Test

  def setup
    @meal_1 = Food.new("salad", 3.99, 1)
    @meal_2 = Food.new("kebab", 5.00, 5)
    @meal_3 = Food.new("fish and chips", 5.00, 4)

    @customer_1 = Customer.new("Mark", 22.80, [], 18, 0)
    @customer_2 = Customer.new("Josie", 100.50, [], 17, 0)
    @customer_3 = Customer.new("Colin", 0.50, [], 27, 12)

  end











end
