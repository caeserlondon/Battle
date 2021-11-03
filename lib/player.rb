class Player 
  attr_reader :name, :hp

  DEFAULT_HP = 100

  def initialize(name = 'Player', hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.lose_hp
  end

  def lose_hp
    @hp -= 10
  end
end