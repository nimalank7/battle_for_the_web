require 'game'
require 'player'

describe Game do
  let(:bob) {double :bob, name: "Bob"}
  let(:james) {double :james, name: "James", hit_points: 100}
  let(:player_1_class) {double :player_1_class}
  let(:player_2_class) {double :player_2_class}
  let(:game) {Game.new("Bob", "James", player_1_class, player_2_class)}
  before(:each) do
    allow(player_1_class).to receive(:new) {bob}
    allow(player_2_class).to receive(:new) {james}
  end

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
end
