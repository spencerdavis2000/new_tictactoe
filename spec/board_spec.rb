require 'board'

describe Board do   
	it "should do initialize" do
		board = Board.new
		board.board.should == [' ']*9
	end
	it "should set an element with a specified value" do
		board = Board.new
		board.set_board(0, 'X')
		board.board.should == ['X']+[' ']*8
	end
	it "should return a value at a specified element" do
		board = Board.new
		board.set_board(1, 'O')
		board.get_board_element(1).should == 'O'
	end
	it "should return the entire board" do
		board = Board.new
		board.set_board(1, 'X')
		board.set_board(8, 'O')
		board.get_board.should == [' ','X',' ',' ',' ',' ',' ',' ','O']
	end
end