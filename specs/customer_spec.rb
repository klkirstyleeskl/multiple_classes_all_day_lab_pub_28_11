require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../drink')

class TestCustomer < Minitest::Test

  def setup
    @customer_1 = Customer.new("Mark", 22.80, [])
    @guiness = Drink.new("Guinness", 3.60)
    @peroni = Drink.new("Peroni", 4.80)
    @tequila = Drink.new("Tequila", 2.00)
    @whisky = Drink.new("Whisky", 3.00)
    @french_martini = Drink.new("French Martini", 8.00)
    @white_wine = Drink.new("White Wine", 4.20)
  end

def test_get_customer_name
  assert_equal(@customer_1.customer_name, "Mark" )
end


def test_get_customer_wallet
  assert_equal(@customer_1.customer_wallet, 22.80 )
end

def test_buy_a_drink
  @customer_1.buy_a_drink(@guiness)
  p @customer_1.customer_drinks
  p @customer_1.customer_wallet
end









end
