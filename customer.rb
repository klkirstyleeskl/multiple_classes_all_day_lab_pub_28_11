class Customer

attr_reader :customer_name, :customer_age
attr_accessor :customer_wallet, :customer_drinks, :drunkenness

  def initialize(customer_name, customer_wallet, customer_drinks = [],
    customer_age, drunkenness)
    @customer_name = customer_name
    @customer_wallet = customer_wallet
    @customer_drinks = customer_drinks
    @customer_age = customer_age
    @drunkenness = drunkenness
  end

  def buy_a_drink(drink_type, pub)
    if pub.verify_age(@customer_age) && pub.verify_drunkenness(@drunkenness)
      @customer_drinks << drink_type
      pub.stock_decrement(drink_type.drink_name) 
      @drunkenness += drink_type.units
      @customer_wallet -= drink_type.drink_price
      pub.pub_till += drink_type.drink_price
    else
      return nil
    end
  end

  def buy_food(meal, pub)
    @customer_wallet -= meal.price
    if @drunkenness >= meal.rejuvenation
      @drunkenness -= meal.rejuvenation
    else @drunkenness = 0
  end
      pub.pub_till += meal.price
  end







end
