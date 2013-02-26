require 'pry'
class Board

	attr_reader :board

	def initialize(board)

		#just pass the state of the game board, or ai board, etc..and keep them
		# all separate because each one gets initialized with its own board.
		@board = board 
	end
	def set_element(element, value)
		@board[element] = value
	end
	def get_element(element)
		@board[element]
	end
	def board_state
		board = []
		@board.size.times do |i|
			board << @board[i]
		end
		return board
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
end
#binding.pry