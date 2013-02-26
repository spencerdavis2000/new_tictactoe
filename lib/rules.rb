require 'pry'
module Rules
	GROUPS = {
		1 => [0, 1, 2],
		2 => [3, 4, 5],
		3 => [6, 7, 8],
		4 => [0, 3, 6],
		5 => [1, 4, 7],
		6 => [2, 5, 8],
		7 => [0, 4, 8],
		8 => [2, 4, 6]
	}

	attr_reader :winner
	
	def win?
		board = @board.board
		GROUPS.values.each do |trio|
			if board[trio[0]] == board[trio[1]] &&
			   board[trio[0]] == board[trio[2]] &&
			   ['X', 'O'].include?(board[trio[0]])
			@winner = board[trio[0]]
			return true
			end
		end
		return false
	end

	def over?
		win? || @board.board.none? {|move| move == ' '}
	end

end
#binding.pry