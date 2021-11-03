require_relative 'player'

class Game

  def initialize(player_one = 'Player One', player_two = 'Player Two')
    @players = [player_one, player_two]
  end

  def player_one
    @players[0]
  end

  def player_two
    @players[1]
  end

  def attack(player)
    player.lose_hp
  end
end