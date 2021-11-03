require_relative 'player'

class Game
  def attack(player)
    player.lose_hp
  end
end