require'minitest/autorun'
require'minitest/rg'
require_relative'../models/game'

class GameTest < MiniTest::Test

  def test_p1_wins_with_paper
    assert_equal("Player 1 wins!", Game.run('paper', 'rock'))
  end

  def test_p2_wins_with_paper
    assert_equal("Player 2 wins!", Game.run('rock', 'paper'))
  end

  def test_p2_wins_with_rock
    assert_equal("Player 2 wins!", Game.run('scissors', 'rock'))
  end

  def test_p1_wins_with_rock
    assert_equal("Player 1 wins!", Game.run('rock', 'scissors'))
  end

  def test_p1_wins_with_scissors
    assert_equal("Player 1 wins!", Game.run('scissors', 'paper'))
  end

  def test_p2_wins_with_scissors
    assert_equal("Player 2 wins!", Game.run('paper', 'scissors'))
  end

  def test_draw
    assert_equal("Draw!", Game.run('paper', 'paper'))
  end
end
