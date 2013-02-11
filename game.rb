class Game
  attr_reader :current_player

  def initialize
    @current_player  = 'O'
  end

  def play_move(move)
    if @current_player == 'O'
      @current_player = 'X'
    else
      @current_player = 'O'
    end
  end
end