require 'board'

describe Board do   
	it "should do initialize" do
		board = Board.new([' ']*9)
		board.board.should == [' ']*9
	end
	it "should set an element with a specified value" do
		board = Board.new([' ']*9)
		board.set_element(0, 'X')
		board.board.should == ['X']+[' ']*8
	end
	it "should return a value at a specified element" do
		board = Board.new([' ']*9)
		board.set_element(1, 'O')
		board.get_element(1).should == 'O'
	end
	it "should return the entire board" do
		board = Board.new([' ']*9)
		board.set_element(1, 'X')
		board.set_element(8, 'O')
		board.board.should == [' ','X',' ',' ',' ',' ',' ',' ','O']
	end
end