class Player
  attr_accessor :hit_points
  attr_reader :name
  def initialize(name)
    @name = name
    @hit_points = 100
  end
  def attack(player)
    player.hit_points -= 10
  end
end
