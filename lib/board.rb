class Board

  # def initialize(layout)
  #   @layout = layout
  # end

  def print_game(layout)
    puts ' 1    2    3'
    puts '-------------'
    puts "| #{layout[0]} | #{layout[1]} | #{layout[2]} |"
    puts '-------------'
    puts "| #{layout[3]} | #{layout[4]} | #{layout[5]} |"
    puts '-------------'
    puts "| #{layout[6]} | #{layout[7]} | #{layout[8]} |"
    puts '-------------'
  end
end
