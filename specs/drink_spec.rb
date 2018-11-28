require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class TestDrink < Minitest::Test

  def setup
    @guiness = Drink.new("Guinness", 3.60, 2)
    @peroni = Drink.new("Peroni", 4.80, 3)
    @tequila = Drink.new("Tequila", 2.00, 1)
    @whisky = Drink.new("Whisky", 3.00, 1)
    @french_martini = Drink.new("French Martini", 8.00, 4)
    @white_wine = Drink.new("White Wine", 4.20, 3)
  end


  def test_get_drink_name
    assert_equal("Peroni", @peroni.drink_name)
  end

  def test_get_drink_price
      assert_equal(2.00, @tequila.drink_price)
  end


  def test_get_drink_units
    assert_equal(3, @peroni.units)
  end












end
