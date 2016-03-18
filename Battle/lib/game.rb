class Game

  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def swap_turn
    if @current_player == @player_1
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end

  def attack(player)
    player.tunage_loss
  end

  def opponent
    @current_player == @player_1 ? @player_2 : @player_1
  end
end
