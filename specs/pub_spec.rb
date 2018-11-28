require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class TestPub < Minitest::Test


  def setup
    @pub = Pub.new("The JustinLees",500.00)
    @guiness = Drink.new("Guinness", 3.60)
    @peroni = Drink.new("Peroni", 4.80)
    @tequila = Drink.new("Tequila", 2.00)
    @whisky = Drink.new("Whisky", 3.00)
    @french_martini = Drink.new("French Martini", 8.00)
    @white_wine = Drink.new("White Wine", 4.20)
    @pub_drinks = [@guiness, @peroni, @tequila, @whisky, @white_wine,
    @french_martini]
    @customer_1 = Customer.new("Mark", 22.80, [])
  end

  def test_get_pub_name
    assert_equal("The JustinLees", @pub.pub_name)
  end

  def test_get_till_value
    assert_equal(500.00, @pub.pub_till)
  end

  def test_buy_a_drink
    @customer_1.buy_a_drink(@guiness)
  end
















end
