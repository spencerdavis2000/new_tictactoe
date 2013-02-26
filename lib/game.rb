$LOAD_PATH.unshift File.expand_path('../', __FILE__)
require 'pry'
require 'board'
require 'rules'

class Game
  attr_reader :current_player
  attr_reader :board
  attr_accessor :winner
  include Rules

  def initialize(current_player)
    @board = Board.new([' ']*9)
    @current_player = current_player
  end

  def play_move(move)
    @board.set_element(move, @current_player)
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
    board = @board.board_state
      board.size.times do |i|
        indexes = {:first => [1,4,7], :second => [2,5,8], :third => [0,3,6]}
        if indexes[:first].include?(i)
          print "|" + board[i] + "|" if indexes[:first].include?(i)
        elsif indexes[:second].include?(i)
          print board[i] + "\n"
        else
          print board[i]
        end
      end
  end
end
#binding.pry