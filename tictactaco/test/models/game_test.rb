require 'test_helper'

class GameTest < ActiveSupport::TestCase

  test "We can place an X" do
    game = Game.new
    game.place(5, "X")
    assert_equal "X", game.tile(5)
  end

  test "Computer can play" do
    game = Game.new
    game.computer_play
    all_values = (1..9).to_a.map do |i|
      game.tile(i) != ""
    end

    assert_equal true, all_values.any?


  end

  test "game should start with no winner" do
    game = Game.new
    winner = game.winner
    assert_equal "", game.winner
  end

  test "7,8,9 for X should win" do

    game = Game.new
    game.position_1 = "O"
    game.position_2 = "O"
    game.position_5 = "O"
    game.position_7 = "X"
    game.position_8 = "X"
    game.position_9 = "X"

    the_winner = game.winner

    assert_equal "X", the_winner

  end

  test "7,8,9 for O should win" do

    game = Game.new
    game.position_1 = "X"
    game.position_2 = "X"
    game.position_5 = "X"
    game.position_7 = "O"
    game.position_8 = "O"
    game.position_9 = "O"

    the_winner = game.winner

    assert_equal "O", the_winner

  end

  test "1,2,3 for X should win" do
    game = Game.new
    game.position_1 = "X"
    game.position_2 = "X"
    game.position_3 = "X"
    game.position_5 = "O"
    game.position_7 = "O"
    game.position_8 = "O"

    the_winner = game.winner

    assert_equal "X", the_winner

  end

  test "4,5,6 for X should win" do
    game = Game.new
    game.position_4 = "X"
    game.position_5 = "X"
    game.position_6 = "X"
    game.position_1 = "O"
    game.position_8 = "O"
    game.position_9 = "O"

    the_winner = game.winner

    assert_equal "X", the_winner

  end

  test "1,5,9 for X should win" do

    game = Game.new
    game.position_1 = "X"
    game.position_5 = "X"
    game.position_9 = "X"
    game.position_4 = "O"
    game.position_7 = "O"
    game.position_3 = "O"

    the_winner = game.winner

    assert_equal "X", the_winner

  end

  test "2,5,8 for X should win" do

    game = Game.new
    game.position_2 = "X"
    game.position_5 = "X"
    game.position_8 = "X"
    game.position_4 = "O"
    game.position_7 = "O"
    game.position_3 = "O"

    the_winner = game.winner

    assert_equal "X", the_winner

  end

end
