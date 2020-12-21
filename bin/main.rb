#!/usr/bin/env ruby
require_relative '../lib/board'
require_relative '../lib/game'
require_relative '../lib/player'

game = Game.new
@board = Board.new
name = ''

def print_initial_message(game, player1, player2)
  game.current_player = game.move_num.odd? ? player1 : player2
  puts 'Note: Game is over when all squares are filled.'
  puts "Round for #{game.current_player.name}"
  puts 'Please enter a number (from 1 to 9) to play your move.'
end

def game_flow(game, player1, player2)
  game.first_d = nil
  @board.print_game(game.layout)
  print_initial_message(game, player1, player2)
  input = gets.chomp
  puts '---------------------------'
  return 'Wrong value entered! Please try again!' unless game.input_valid?(input)

  game.update_d(input)
  return 'Wrong value entered! Please try again!' unless game.move_valid?

  return 'This square is already filled! Please try again!' unless game.square_filled?

  game.play_move

  if game.game_won?
    game.gameover = true
    return "#{game.current_player.name} has won the game!"
  end

  return unless game.move_num > 9

  game.gameover = true
  " Game Over! It's a draw!"
end

puts "Welcome to Oxfordiho's TIC-TAC-TOE game"

puts 'First Player please enter your name.'
name = gets.chomp while name.empty?
player1 = Player.new(name, 'x')

name = ''
puts 'Second Player please enter your name.'
name = gets.chomp while name.empty?
player2 = Player.new(name, 'o')

puts game_flow(game, player1, player2) until game.gameover
@board.print_game(game.layout)
