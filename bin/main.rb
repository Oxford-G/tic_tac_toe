#!/usr/bin/env ruby
# rubocop:disable Metrics/BlockNesting
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

while game_system
  space_count = nil

  puts ' 1 2 3'
  puts '-------------'
  puts "| #{layout[0]} | #{layout[1]} | #{layout[2]} |"
  puts '-------------'
  puts "| #{layout[3]} | #{layout[4]} | #{layout[5]} |"
  puts '-------------'
  puts "| #{layout[6]} | #{layout[7]} | #{layout[8]} |"
  puts '-------------'

  if i != 9
    puts 'Note: Game is over when all squares are filled.'
    puts "Round for #{players[i % 2]}"
    puts 'Please enter a number (from 1 to 9) to play your move.'
    input = gets.chomp
  end

  if input.length == 1
    space_count = if input.include?('1')
                    0
                  elsif input.include?('2')
                    1
                  elsif input.include?('3')
                    2
                  elsif input.include?('4')
                    3
                  elsif input.include?('5')
                    4
                  elsif input.include?('6')
                    5
                  elsif input.include?('7')
                    6
                  elsif input.include?('8')
                    7
                  elsif input.include?('9')
                    8
                  end
    if !space_count.nil?
      if layout[space_count] != 'x' && layout[space_count] != 'o'
        layout[space_count] = i.even? ? 'x' : 'o'
        game_system = false if i == 9
        i += 1
      else
        puts 'This square is already filled! Please try again!'
        game_system = false
      end
    else
      puts 'Wrong value entered! Please try again!'
      puts
    end
  else
    puts 'Wrong value entered! Please try again!'
    puts
  end
  puts 'Game Over'
end
# rubocop:enable Metrics/BlockNesting
