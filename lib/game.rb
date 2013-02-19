require 'pry'

class Game
  attr_reader :current_player
  attr_accessor :board

  def initialize(current_player)
    @current_player = current_player
    @board = [' '] * 9
  end

  def over?
    @board.none? { |move| move == ' ' }
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
  def print_board
    puts @board[0].to_s + "|" +@board[1].to_s + "|"+@board[2].to_s+"\n"+
            @board[3].to_s+ "|" +@board[4].to_s + "|" +@board[5].to_s+"\n"+
            @board[6].to_s+ "|" +@board[7].to_s + "|" +@board[8].to_s
  end
end
#binding.pry