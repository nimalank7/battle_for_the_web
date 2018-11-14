require 'game'
require 'player'

describe Game do
  it 'creates an instance of the Game class' do
    game = Game.new
    expect(game.instance_of? Game).to be true
  end

  it "creates a player called Bob and stores it in @player_1" do
    game = Game.new
    expect(game.player_1.name).to eq "Bob"
  end

  it "creates a player called James and stores it in @player_2" do
    game = Game.new
    expect(game.player_2.name).to eq "James"
  end
end
