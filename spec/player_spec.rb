require 'Player'

describe Player do
  let(:jack) {Player.new("Jack")}
  let(:jill) {Player.new("Jill")}

  it "returns its own name" do
    expect(jack.name).to eq "Jack"
  end
  it "sets hit points to 100" do
    expect(jill.hit_points).to eq 100
  end

  it "allows hit points to be modified to 90" do
    jill.hit_points = 90
    expect(jill.hit_points).to eq 90
  end

  it "attacks Jill and deducts HP by 10 leaving 90" do
    jack.attack(jill)
    expect(jill.hit_points).to eq 90
  end
end
