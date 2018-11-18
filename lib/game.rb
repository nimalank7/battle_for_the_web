require_relative "./player.rb"

class Game
  attr_reader :player_1, :player_2
  attr_accessor :attacker, :being_attacked
  ATTACK_VALUE = 10

  def initialize(name_1, name_2, player_1_class = Player, player_2_class = Player)
    @player_1 = player_1_class.new(name_1)
    @player_2 = player_2_class.new(name_2)
    @being_attacked = player_2
    @attacker = player_1
  end

  def attack(player)
    player.hit_points -= ATTACK_VALUE
    swap_being_attacked
    swap_being_attacker
  end

  def self.new_game(name_1, name_2, player_1_class = Player, player_2_class = Player)
    @individual_game = Game.new("Bob", "James", player_1_class, player_2_class)
  end

  def self.instance
    @individual_game
  end

  private
  def swap_being_attacked
    player_to_attack = [player_1, player_2].select do |player|
      player != @being_attacked
    end
    @being_attacked = player_to_attack[0]
  end

  def swap_being_attacker
    player_to_attack = [player_1, player_2].select do |player|
      player != @attacker
    end
    @attacker = player_to_attack[0]
  end
end
