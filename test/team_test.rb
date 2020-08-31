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

    assert_equal "France", team.name
  end

end
