class Player
  TOTAL_HIT_POINTS = 100
  attr_accessor :hit_points
  attr_reader :name
  def initialize(name)
    @name = name
    @hit_points = TOTAL_HIT_POINTS
  end
end
