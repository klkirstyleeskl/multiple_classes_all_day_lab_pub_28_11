class Pub

  attr_reader :pub_name
  attr_accessor :pub_till, :drinks_inventory

  def initialize (pub_name, pub_till, drinks_inventory =[])
    @pub_name = pub_name
    @pub_till = pub_till
    @drinks_inventory = drinks_inventory
  end

  def add_drinks(drinks)
    @drinks_inventory += drinks
  end

  def get_drinks()
    return @drinks_inventory
  end


  def verify_age (age)
    return age >= 18
  end

  def verify_drunkenness (drunkenness)
    return drunkenness < 10
  end

  def stock_decrement (drink_name)
    @drinks_inventory[drink_name] -= 1
  end





end
