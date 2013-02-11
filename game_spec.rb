require './game'

describe Game do
  it "knows current player" do
    game = Game.new
    game.current_player.should == 'O' 
  end

  it "changes current player after play a move" do
    game = Game.new
    game.current_player.should == 'O'
    game.play_move(9)
    game.current_player.should == 'X'
  end
end