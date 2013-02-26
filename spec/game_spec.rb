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
      game.over?.should be_false
    end

    it "is false if board has one position occupies" do
      game = Game.new('O')
      game.board.set_element(0, 'O')
      game.over?.should be_false
    end

    it "is true if board is full" do
      game = Game.new('O')
      (0..9).each do |element|
        game.board.set_element(element, 'O')
      end
      game.over?.should be_true
    end
  end

  it "plays a move on board for player 1" do
    game = Game.new('O')
    game.play_move(0)
    game.board.board_state.should == ['O'] + [' '] * 8
  end

  it "plays a move on board for player 2" do
    game = Game.new('O')
    game.play_move(0)
    game.play_move(1)
    game.board.board_state.should == ['O', 'X'] + [' ']*7
  end

  context "Win?" do
    it "winner should be false starting out" do
    game = Game.new('O')
    game.win?.should == false
  end
  it "winner should be true if X wins and @winner = X" do
    game = Game.new('O')
    game.board.set_element(0, 'X')
    game.board.set_element(1, 'X')
    game.board.set_element(2, 'X')
    game.win?.should == true
    game.winner.should == 'X'
  end

  it "winner should be true if O wins and @winner = O" do
    game = Game.new('O')
    game.board.set_element(0, 'O')
    game.board.set_element(1, 'O')
    game.board.set_element(2, 'O')
    game.win?.should == true
    game.winner.should == 'O'
  end

  context "Game Over Win" do
    it "should return true if there is a win and enter the game" do
      game = Game.new('O')
      game.board.set_element(0, 'X')
      game.board.set_element(1, 'X')
      game.board.set_element(2, 'X')
      game.over?.should == true
    end
  end
  end
end
# while game.is_not_over?
  # IO - ask user for move
  # GAME LOGIC - game.play_move(move)
  # AI - move = AI.generate_move(game.current_player, game.current_board)
  # IO - menu, ask user for move, display board, etc.
# end