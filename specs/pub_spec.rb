require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class TestPub < Minitest::Test


  def setup
    
    @pub = Pub.new("The JustinLees",500.00)

    @pub_stock = {"Guinness" => 10, "Peroni" => 3, "Tequila" => 40,
      "Whisky" => 50, "French Martini" => 25, "White Wine" => 27
    }

    @guiness = Drink.new("Guinness", 3.60, 2)
    @peroni = Drink.new("Peroni", 4.80, 3)
    @tequila = Drink.new("Tequila", 2.00, 1)
    @whisky = Drink.new("Whisky", 3.00, 1)
    @french_martini = Drink.new("French Martini", 8.00, 4)
    @white_wine = Drink.new("White Wine", 4.20, 3)
    @pub_drinks = [@guiness, @peroni, @tequila, @whisky, @white_wine,
    @french_martini]



    @customer_1 = Customer.new("Mark", 22.80, [], 18, 0)
    @customer_2 = Customer.new("Josie", 100.50, [], 17,0)
  end

  def test_get_pub_name
    assert_equal("The JustinLees", @pub.pub_name)
  end

  def test_get_till_value
    assert_equal(500.00, @pub.pub_till)
  end

  def test_add_drinks_to_pub
    @pub.add_drinks(@pub_drinks)
    assert_equal(@pub_drinks.length, @pub.get_drinks.length)
  end















end
