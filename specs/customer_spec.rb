require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../drink')
require_relative('../pub')

class TestCustomer < Minitest::Test

  def setup
    @pub = Pub.new("The JustinLees",500.00)
    @customer_1 = Customer.new("Mark", 22.80, [], 18, 0)
    @customer_2 = Customer.new("Josie", 100.50, [], 17, 0)
    @customer_3 = Customer.new("Colin", 0.50, [], 27, 12)

    @guiness = Drink.new("Guinness", 3.60, 2)
    @peroni = Drink.new("Peroni", 4.80, 3)
    @tequila = Drink.new("Tequila", 2.00, 1)
    @whisky = Drink.new("Whisky", 3.00, 1)
    @french_martini = Drink.new("French Martini", 8.00, 4)
    @white_wine = Drink.new("White Wine", 4.20, 3)
  end

def test_get_customer_name
  assert_equal(@customer_1.customer_name, "Mark" )
end


def test_get_customer_wallet
  assert_equal(@customer_1.customer_wallet, 22.80 )
end

def test_buy_a_drink__legal
  @customer_1.buy_a_drink(@guiness, @pub)
  p @customer_1.customer_drinks
  p @customer_1.customer_wallet
  p @pub.pub_till
  p @customer_1.drunkenness
end

def test_get_customer_age
  assert_equal(@customer_1.customer_age, 18)
end

def test_buy_a_drink__legal__underage
  @customer_2.buy_a_drink(@tequila, @pub)
  p @customer_2.customer_drinks
  p @customer_2.customer_wallet
  p @pub.pub_till
end

def test_buy_a_drink__legal__drunk
  @customer_3.buy_a_drink(@tequila, @pub)
  p @customer_3.customer_drinks
  p @customer_3.customer_wallet
  p @pub.pub_till
end





end
