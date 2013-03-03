require 'minimax'

describe Minimax  do 
	# it "should make a move given a current board with 1 empty spot" do
	# 	board = Board.new(['O','O','X','X','X','O','O',' ','X'])
	# 	minimax = Minimax.new
	# 	minimax.min_max(board, 'O').should == 7
	# end

	# it "should make a move given a current board with 2 empty spots" do
	# 	board = Board.new ['O','O',' ','X', 'X',' ',' ',' ',' ']
	# 	minimax = Minimax.new
	# 	minimax.min_max(board, 'X').should == 5
	# end

	# it "should make a move given a current board with more empty spots" do
	# 	board = Board.new ['O', 'O', 'X', 'X', ' ', ' ', ' ', ' ', ' ']
	# 	minimax = Minimax.new
	# 	minimax.min_max(board, 'X').should == 4
	# end

	# it "test" do
	# 	board = Board.new ['O', 'O', 'X', 'X', ' ', 'O', ' ', ' ', 'X']
	# 	minimax = Minimax.new
	# 	minimax.recursive(board, 'X')
	# end

	# it "scores for a draw" do
	# 	board = Board.new [
	# 		'O', 'O', 'X',
	# 		'X', 'X', 'O',
	# 		'O', 'O', 'X',
	# 	]
	# 	minimax = Minimax.new
	# 	minimax.score(board, 'X').should == 0
	# end

	# it "scores for a win" do
	# 	board = Board.new [
	# 		'O', 'X', 'X',
	# 		'X', 'X', 'O',
	# 		'O', 'O', 'O',
	# 	]
	# 	minimax = Minimax.new
	# 	minimax.score(board, 'O').should == 1
	# end

	# it "scores for a lose" do
	# 	board = Board.new [
	# 		'O', 'X', 'X',
	# 		'X', 'X', 'O',
	# 		'O', 'O', 'O',
	# 	]
	# 	minimax = Minimax.new
	# 	minimax.score(board, 'X').should == -1
	# end

	# it "scores for a win in two moves" do
	# 	board = Board.new [
	# 		'X', ' ', 'X',
	# 		' ', 'O', ' ',
	# 		'X', ' ', ' ',
	# 	]
	# 	minimax = Minimax.new
	# 	minimax.score(board, 'X').should == 1
	# end

	# it "scores for a lose in two moves" do
	# 	board = Board.new [
	# 		'X', 'O', 'X',
	# 		'O', 'O', 'X',
	# 		'X', ' ', ' ',
	# 	]
	# 	minimax = Minimax.new
	# 	minimax.score(board, 'O').should == -1
	# end

	it "selects best move for a board" do
		board = Board.new [
			'X', 'O', ' ',
			' ', ' ', ' ',
			' ', ' ', 'X',
		]
		minimax = Minimax.new
		minimax.best_move(board, 'X').should == 4
	end
end