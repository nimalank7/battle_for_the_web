require 'Player'

describe Player do
  let(:bob) {Player.new("Bob")}
  let(:james) {Player.new("James")}

  it "returns its own name" do
    expect(bob.name).to eq "Bob"
  end
  it "sets hit points to 100" do
    expect(james.hit_points).to eq Player::TOTAL_HIT_POINTS
  end

  it "allows hit points to be modified to 90" do
    james.hit_points = 90
    expect(james.hit_points).to eq 90
  end
end
