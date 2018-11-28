class Customer

attr_reader :customer_name
attr_accessor :customer_wallet, :customer_drinks

  def initialize(customer_name, customer_wallet, customer_drinks = [])
    @customer_name = customer_name
    @customer_wallet = customer_wallet
    @customer_drinks = customer_drinks
  end













end
