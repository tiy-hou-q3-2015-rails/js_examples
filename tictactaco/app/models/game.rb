class Game < ActiveRecord::Base



  def computer_play

    # get open squares
    open_squares = (1..9).to_a.select do |i|
      tile(i).blank?
    end
    # choose a random square from the open
    rando_square = open_squares.sample
    # mark as O
    place(rando_square, "O")

  end

  def winner

    ["X", "O"].each do |player|

      winning_combos = [
        [7,8,9],
        [1,2,3],
        [4,5,6],
        [1,4,7],
        [2,5,8],
        [3,6,9],
        [1,5,9],
        [3,5,7]
      ]

      winning_combos.each do |combo|
        return player if all_tiles(combo, player)
      end


    end

    return ""


  end

  def tile(number)
    # sort of calls position_5 for 5
    self["position_#{number}"]
  end

  def all_tiles(tiles, player)
    values = tiles.map{|i| tile(i)}
    values.all? {|i| i == player }
  end

  def place(position, player)
    self["position_#{position}"] = player
  end
end
