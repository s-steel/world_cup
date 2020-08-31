require './lib/player'
require './lib/team'
require 'minitest/autorun'
require 'minitest/pride'

class TeamTest < MiniTest::Test

  def test_it_exists
    team = Team.new("France")

    assert_instance_of Team, team
  end

  def test_has_attributes
    team = Team.new("France")

    assert_equal "France", team.country
  end

  def test_can_be_eliminated
    team = Team.new("France")

    assert_equal false, team.eliminated?

    team.eliminated = true

    assert_equal true, team.eliminated?
  end

  def test_add_players
    team = Team.new("France")
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})

    team.add_player(mbappe)

    assert_equal [mbappe], team.players

    team.add_player(pogba)

    assert_equal [mbappe, pogba], team.players
  end 

end
