require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class TestCustomer < Minitest::Test
  def setup
    @customer_1 = Customer.new("Mark", 22.80, [])
  end

def test_get_customer_name
  assert_equal(@customer_1.customer_name, "Mark" )
end


def test_get_customer_wallet
  assert_equal(@customer_1.customer_wallet, 22.80 )
end










end
