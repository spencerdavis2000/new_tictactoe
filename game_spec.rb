require './game'

describe Game do
  it "knows current player" do
    game = Game.new
    game.current_player.should == 'O' 
  end

  it "changes current player after play_move" do
    game = Game.new
    game.play_move(2)
    game.current_player.should == 'O'
    game.play_move(1)
    game.current_player.should == 'X'
  end

  it "player 1 adds a value to the board" do
    game = Game.new
    player_one = game.play_move(1)
    game.change_board(player_one, 3)
    game.board.should == ['', '', '', 'X', '', '', '', '', '']
  end
  it "player 2 adds a value to the board" do
    game = Game.new
    player_two = game.play_move(2)
    game.change_board(player_two, 2)
    game.board.should == ['', '', 'O', '', '', '', '', '', '']
  end
  
end

# while game.is_not_over?
  # IO - ask user for move
  # GAME LOGIC - game.play_move(move)
  # AI - move = AI.generate_move(game.current_player, game.current_board)
  # IO - menu, ask user for move, display board, etc.
# end