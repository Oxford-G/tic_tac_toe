class Game
  attr_reader :move_num, :layout

  attr_writer :first_d

  attr_accessor :gameover, :current_player

  def initialize
    @layout = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @gameover = false
    @first_d = nil
    @current_player = nil
    @move_num = 1
  end

  def input_valid?(input)
    input.length == 1
  end

  def update_d(input)
    table_rows = %w[1 2 3 4 5 6 7 8 9]

    table_rows.each_with_index { |item, i| @first_d = i if input.include?(item) }
  end

  def move_valid?
    !@first_d.nil?
  end

  def square_filled?
    @layout[@first_d] != 'x' && @layout[@first_d] != 'o'
  end

  def winning_possibilities
    [[@layout[0], @layout[1], @layout[2]],
     [@layout[3], @layout[4], @layout[5]],
     [@layout[6], @layout[7], @layout[8]],
     [@layout[0], @layout[3], @layout[6]],
     [@layout[1], @layout[4], @layout[7]],
     [@layout[2], @layout[5], @layout[8]],
     [@layout[6], @layout[4], @layout[2]],
     [@layout[0], @layout[4], @layout[8]]]
  end

  def play_move
    @layout[@first_d] = @current_player.symbol
    @move_num += 1
  end

  def game_won?
    winning_possibilities.any? do |item|
      item.push(@current_player.symbol)
      item.uniq.length == 1
    end
  end
end
