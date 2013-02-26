require 'pry'
class Board

	attr_reader :board

	def initialize(board)

		@board = board 
	end
	def set_element(element, value)
		@board[element] = value
	end
	def get_element(element)
		@board[element]
	end
	def undo(element)
		@board[element] = ' '
	end
	def empty_spots
		empty_spots = []
		@board.size.times do |i|
			if @board[i] == ' '
				empty_spots << i
			end
		end
		return empty_spots
	end
	def print_board
		puts @board[0] +"|"+ @board[1] +"|"+ @board[2] +"\n"+
			 @board[3] +"|"+ @board[4] +"|"+ @board[5] +"\n"+
			 @board[6] +"|"+ @board[7] +"|"+ @board[8] 
  	end
end
#binding.pry