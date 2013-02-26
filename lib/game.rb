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
end
#binding.pry