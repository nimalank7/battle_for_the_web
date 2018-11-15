require 'game'
require 'player'

describe Game do
  let(:bob) {double :bob, name: "Bob"}
  let(:james) {double :james, name: "James", hit_points: 100}
  let(:player_1_class) {double :player_1_class, new: bob}
  let(:player_2_class) {double :player_2_class, new: james}
  let(:game) {Game.new("Bob", "James", player_1_class, player_2_class)}

  it "creates a player called Bob and stores it in @player_1" do
    expect(game.player_1.name).to eq "Bob"
  end

  it "creates a player called James and stores it in @player_2" do
    expect(game.player_2.name).to eq "James"
  end
  it "attacks Bob and deducts 10 hitpoints from James" do
    allow(james).to receive(:hit_points=) {90}
    allow(james).to receive(:hit_points) {90}
    game.attack(game.player_2)
    expect(game.player_2.hit_points).to eq 90
  end

  it "player 1 attack on player 2 reduces hitpoints" do
    allow(james).to receive(:hit_points=).and_return(90)
    allow(james).to receive(:hit_points).and_return(90)
    game.attack(game.player_2)
    expect(game.player_2.hit_points).to eq 90
  end

  it "after 2 attacks player 1 should have 90 HP" do
    allow(james).to receive(:hit_points=).and_return(90)
    allow(james).to receive(:hit_points).and_return(90)
    allow(bob).to receive(:hit_points=).and_return(90)
    allow(bob).to receive(:hit_points).and_return(90)
    game.attack(game.being_attacked)
    game.attack(game.being_attacked)
    expect(game.player_1.hit_points).to eq 90
  end
end
