require_relative '../lib/game'
require_relative '../lib/player'

describe Game do
  game = Game.new

  describe '#input valid' do
    it 'checks if num 1 is valid input' do
      expect(game.input_valid?('1')).to eql(true)
    end

    it 'checks if num 12 is valid input' do
      expect(game.input_valid?('12')).to eql(false)
    end
  end

  describe '#winning possibilities table' do
    it 'checks if all sets in te are empty' do
      expect(game.winning_possibilities).to eql([[' ', ' ', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', ' ', ' ']])
    end

    it 'Check if the sets contain 4' do
      game.current_player = Player.new('1', 'o')
      game.first_d = nil
      game.update_d('4')
      game.play_move
      expect(game.winning_possibilities).to eql([[' ', ' ', ' '],
                                                 ['o', ' ', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', 'o', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', ' ', ' '],
                                                 [' ', ' ', ' ']])
    end
  end

  describe '#Update array first dimension' do
    it 'Update 4' do
      game.current_player = Player.new('1', 'o')
      game.first_d = nil
      game.update_d('4')
      game.play_move
      expect(game.layout[3]).to eql('o')
    end
  end

  describe '#Move valid' do
    it 'Check if 1 is a valid move' do
      game.first_d = nil
      game.update_d('1')
      expect(game.move_valid?).to eql(true)
    end

    it 'Check if 0 is a valid move' do
      game.first_d = nil
      game.update_d('0')
      expect(game.move_valid?).to eql(false)
    end
  end

  describe '#Play move' do
    it 'Play move 4' do
      game.current_player = Player.new('1', 'o')
      game.first_d = nil
      game.update_d('4')
      game.play_move
      expect(game.layout[3]).to eql('o')
      expect(game.move_num).to eql(4)
    end
  end

  describe '#Filled square' do
    it 'Check if 1 is filled upon having it present' do
      game.current_player = Player.new('1', 'x')
      game.update_d('1')
      game.play_move
      expect(game.square_filled?).to eql(false)
    end
    it 'Check if 1 is filled upon not having it present' do
      game.current_player = Player.new('1', 'x')
      game.update_d('2')
      game.play_move
      game.update_d('3')
      expect(game.square_filled?).to eql(true)
    end
  end

  describe '#Game won' do
    it 'Check if Game is won without 3 filled' do
      game.current_player = Player.new('1', 'x')
      expect(game.game_won?).to eql(false)
    end
    it 'Check if Game is won with 3 filled' do
      game.current_player = Player.new('1', 'x')
      game.update_d('3')
      game.play_move
      expect(game.game_won?).to eql(true)
    end
  end
end

describe Player do
  player = Player.new('oxford', 'x')
  describe '#Player' do
    it 'Creates Player oxford' do
      expect(player.name).to eql('oxford')
    end
    it 'Creates symbol x' do
      expect(player.symbol).to eql('x')
    end
  end
end
