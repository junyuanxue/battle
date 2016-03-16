class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @round_count = 1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_attack
    @round_count += 1
  end

  def current_player
    @round_count.odd? ? @players.first : @players.last
  end
end
