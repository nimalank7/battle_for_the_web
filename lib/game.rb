require_relative "./player.rb"

class Game
  attr_reader :player_1, :player_2
  ATTACK_VALUE = 10

  def initialize(name_1, name_2, player_1_class = Player, player_2_class = Player)
    @player_1 = player_1_class.new(name_1)
    @player_2 = player_2_class.new(name_2)
  end
  def attack(player)
    player.hit_points -= ATTACK_VALUE
  end
end
