class Player
  MAX_HP = 20
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = MAX_HP
  end

  def receive_attack(damage)
    @hp -= damage
  end
end
