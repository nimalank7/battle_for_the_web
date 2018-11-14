require_relative "./player.rb"

class Game
  attr_reader :player_1, :player_2

  def initialize
    @player_1 = Player.new("Bob")
    @player_2 = Player.new("James")
  end
end
