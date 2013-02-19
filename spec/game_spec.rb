require 'game'

describe Game do
  it "knows current player" do
    game = Game.new('O')
    game.current_player.should == 'O'
  end

  it "has a board" do
    game = Game.new('O')
    game.board.should_not be_nil 
  end

  context "over?" do
    it "is false if board is empty" do
      game = Game.new('O')
      game.board = [' '] * 9
      game.over?.should be_false
    end

    it "is false if board has one position occupies" do
      game = Game.new('O')
      game.board = ['O'] + [' '] * 8
      game.over?.should be_false
    end

    it "is true if board is full" do
      game = Game.new('O')
      game.board = ['O'] * 9
      game.over?.should be_true
    end
  end

  it "plays a move on board for player 1" do
    game = Game.new('O')
    game.play_move(0)
    game.board.should == ['O'] + [' '] * 8
  end

  it "plays a move on board for player 2" do
    game = Game.new('O')
    game.play_move(0)
    game.play_move(1)
    game.board.should == ['O', 'X'] + [' ']*7
  end
  
end
# while game.is_not_over?
  # IO - ask user for move
  # GAME LOGIC - game.play_move(move)
  # AI - move = AI.generate_move(game.current_player, game.current_board)
  # IO - menu, ask user for move, display board, etc.
# end