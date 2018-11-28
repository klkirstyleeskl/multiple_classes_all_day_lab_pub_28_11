require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class TestDrink < Minitest::Test

  def setup
    @guiness = Drink.new("Guinness", 3.60)
    @peroni = Drink.new("Peroni", 4.80)
    @tequila = Drink.new("Tequila", 2.00)
    @whisky = Drink.new("Whisky", 3.00)
    @french_martini = Drink.new("French Martini", 8.00)
    @white_wine = Drink.new("White Wine", 4.20)
  end


  def test_get_drink_name
    assert_equal("Peroni", @peroni.drink_name)
  end

  def test_get_drink_price
      assert_equal(2.00, @tequila.drink_price)
  end















end
