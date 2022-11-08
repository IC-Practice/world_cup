require './lib/team'
require './lib/player'

RSpec.describe Team do

  it "has readable attributes" do
    team = Team.new("France")
    expect(team.country).to eq("France")
    expect(team.eliminated?).to eq(false)
  end

  it "can eliminate a team" do
    team = Team.new("France")
    team.eliminated = true
    expect(team.eliminated?).to eq(true)
    expect(team.players).to eq([])
  end

  it "can add players to team" do
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    team.add_player(mbappe)
    team.add_player(pogba)
    expect(team.players).to eq([mbappe,pogba])
  end

  it "can select players by position" do
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    team.add_player(mbappe)
    team.add_player(pogba)
    expect(team.players_by_position("midfielder")).to eq([pogba])
    expect(team.players_by_position("defender")).to eq([])
  end

  

end
