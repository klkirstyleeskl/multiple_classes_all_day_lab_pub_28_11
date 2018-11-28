class Pub

  attr_reader :pub_name
  attr_accessor :pub_till

  def initialize (pub_name, pub_till)
    @pub_name = pub_name
    @pub_till = pub_till
  end

  def verify_age (age)
    return age >= 18
  end

  def verify_drunkenness (drunkenness)
    return drunkenness < 10
  end






end
