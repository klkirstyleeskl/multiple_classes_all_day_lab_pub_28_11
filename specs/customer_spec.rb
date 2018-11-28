require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')
require_relative('../drink')
require_relative('../pub')
require_relative('../food')

class TestCustomer < Minitest::Test

  def setup
    @pub = Pub.new("The JustinLees",500.00)
    @customer_1 = Customer.new("Mark", 22.80, [], 18, 0)
    @customer_2 = Customer.new("Josie", 100.50, [], 17, 0)
    @customer_3 = Customer.new("Colin", 12.50, [], 27, 12)

    @pub_stock = {"Guinness" => 10, "Peroni" => 3, "Tequila" => 40,
      "Whisky" => 50, "French Martini" => 25, "White Wine" => 27
    }
    
    @guiness = Drink.new("Guinness", 3.60, 2)
    @peroni = Drink.new("Peroni", 4.80, 3)
    @tequila = Drink.new("Tequila", 2.00, 1)
    @whisky = Drink.new("Whisky", 3.00, 1)
    @french_martini = Drink.new("French Martini", 8.00, 4)
    @white_wine = Drink.new("White Wine", 4.20, 3)

    @meal_1 = Food.new("salad", 3.99, 1)
    @meal_2 = Food.new("kebab", 5.00, 5)
    @meal_3 = Food.new("fish and chips", 5.00, 4)

  end

def test_get_customer_name
  assert_equal(@customer_1.customer_name, "Mark" )
end


def test_get_customer_wallet
  assert_equal(@customer_1.customer_wallet, 22.80 )
end

def test_buy_a_drink__legal
  @customer_1.buy_a_drink(@guiness, @pub)

  #check customer has had drink.
  assert_equal(true, @customer_1.customer_drinks.length > 0)

  # Check customer money has been taken
  assert_equal(19.2, @customer_1.customer_wallet)

  # Test Customer Dunkeness
  assert_equal(2, @customer_1.drunkenness)
end

def test_get_customer_age
  assert_equal(@customer_1.customer_age, 18)
end

def test_buy_a_drink__legal__underage
  @customer_2.buy_a_drink(@tequila, @pub)
  # Till should still have same amount of money if refused.
  assert_equal(500.0, @pub.pub_till)
end

def test_buy_a_drink__drunk
  # Verify customer cannot buy a drink
  @customer_3.buy_a_drink(@tequila, @pub)
  assert_equal(12, @customer_3.drunkenness)
end

  def test_buy_some_food
    @customer_3.buy_food(@meal_3, @pub)
    # Test Customer Dunkeness
    assert_equal(8, @customer_3.drunkenness)
    # Test Customer can buy a drink now
    @customer_3.buy_a_drink(@peroni, @pub)
    assert_equal(11, @customer_3.drunkenness)

  end
end
