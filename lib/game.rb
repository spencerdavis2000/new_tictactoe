require 'pry'
class Game
  attr_reader :current_player
  attr_accessor :board

  def initialize
    @current_player  = 'O'
    @board = ['']*9
  end

  def play_move(move)
    if move == 1
      @current_player = 'X'
    elsif move == 2
      @current_player = 'O'
    end
  end
  def change_board(player, position)
    @board[position] = player
  end
end
#binding.pry