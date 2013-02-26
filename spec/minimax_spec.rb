require 'minimax'

describe Minimax  do 

	it "should make a move given a current board with 1 empty spot" do
		board = Board.new(['O','O','X','X','X','O','O',' ','X'])
		minimax = Minimax.new
		minimax.min_max(board, 'O').should == 7
	end

	it "should make a move given a current board with 2 empty spots" do
		board = Board.new ['O','O',' ','X', 'X',' ',' ',' ',' ']
		minimax = Minimax.new
		minimax.min_max(board, 'X').should == 5
	end

	it "should make a move given a current board with more empty spots" do
		board = Board.new ['O', 'O', 'X', 'X', ' ', ' ', ' ', ' ', ' ']
		minimax = Minimax.new
		minimax.min_max(board, 'X').should == 4
	end
end