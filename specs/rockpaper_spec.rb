require 'minitest/autorun'
require_relative '../models/rockpaper'

class TestRockPaper < Minitest::Test

  def setup
    @game1 = RockPaper.new("paper", "scissors" )
    @game2 = RockPaper.new("rock", "scissors" )
    @game3 = RockPaper.new("paper", "rock" )
    @game4 = RockPaper.new("paper", "paper" )
    @game5 = RockPaper.new("scissors", "paper")
    @game6 = RockPaper.new(" ", "rock")
  end

  def test_check_winner()
    assert_equal("scissors wins!", @game1.check_winner())
    assert_equal("rock wins!", @game2.check_winner())
    assert_equal("paper wins!", @game3.check_winner())
    assert_equal("it's a draw!", @game4.check_winner())
    assert_equal("scissors wins!", @game5.check_winner())
    assert_equal("an error! Oh dear!  Please enter rock, paper or scissors", @game6.check_winner())
  end



  # def test_loser()
  #   assert_equal("Paper", @game.loser())
  # end


end