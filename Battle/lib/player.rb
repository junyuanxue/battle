class Player
  attr_reader :name, :tunage

  DEFAULT_TUNAGE = 100
  TUNAGE_DAMAGE = 10

  def initialize(name, tunage=DEFAULT_TUNAGE)
    @name = name
    @tunage = tunage
  end

  def tunage_loss
    @tunage -= TUNAGE_DAMAGE
  end
end
