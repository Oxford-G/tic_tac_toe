#!/usr/bin/env ruby

puts "Welcome to Oxfordiho's TIC-TAC-TOE game"

puts

players = []

2.times do |i|
  puts "Please enter the name of Player #{i + 1}."
  players[i] = gets.chomp
  puts "Welcome #{players[i]}"
end

layout = ['', '', '', '', '', '', '', '', '']

game_system = true

i = 0

puts
puts ' 1 2 3'
puts '-------------'
puts "| #{layout[0]} | #{layout[1]} | #{layout[2]} |"
puts '-------------'
puts "| #{layout[3]} | #{layout[4]} | #{layout[5]} |"
puts '-------------'
puts "| #{layout[6]} | #{layout[7]} | #{layout[8]} |"
puts '-------------'

while game_system
  if i != 9
    puts 'Note: Game is over when all squares are filled.'
    puts "Round for #{players[i % 2]}"
    puts 'Place your token (X or O) on positions 1-9 on the board'
    input = gets.chomp
  end

  if input == 'x'
    puts
    puts <<-LAYOUT
      | X | O | X |
      | X | O | X |
      | X | O | X |
    LAYOUT
    puts
    puts 'valid move'
    puts 'you won'
    game_system = false
  elsif input == 'o'
    puts
    puts <<-LAYOUT
      | X | O | X |
      | X | O | o |
      | o | x | X |
    LAYOUT
    puts 'valid move'
    puts 'you draw'
    game_system = false
  else
    puts 'invalid move'
    puts
  end
end
