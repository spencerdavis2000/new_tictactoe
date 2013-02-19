require 'pry'

class Game
  attr_reader :current_player
  attr_accessor :board, :winner

  def initialize(current_player)
    @current_player = current_player
    @board = [' '] * 9
    @group = {
      1 => [0, 1, 2],
      2 => [3, 4, 5],
      3 => [6, 7, 8],
      4 => [0, 3, 6],
      5 => [1, 4, 7],
      6 => [2, 5, 8],
      7 => [0, 4, 8],
      8 => [2, 4, 6]
    }
    @winner = ''
  end

  def over?
     winner? || @board.none? { |move| move == ' ' }
  end

  def play_move(move)
    @board[move] = @current_player
    switch_player
  end

  def switch_player
    if @current_player == 'O'
      @current_player = 'X'
    else
      @current_player = 'O'
    end
  end
  def winner?
    @group.values.each do |trio|
        if @board[trio[0]] == @board[trio[1]] &&
           @board[trio[0]] == @board[trio[2]] &&
           ['X', 'O'].include?(@board[trio[0]])
        @winner = @board[trio[0]]
        return true
        end
    end
      return false
  end
  def print_board
    puts @board[0].to_s + "|" +@board[1].to_s + "|"+@board[2].to_s+"\n"+
            @board[3].to_s+ "|" +@board[4].to_s + "|" +@board[5].to_s+"\n"+
            @board[6].to_s+ "|" +@board[7].to_s + "|" +@board[8].to_s
  end
end
#binding.pry