require 'pry'
class Board

	attr_reader :board1

	def initialize(board)

		@board1 = board 
	end
	def set_element(element, value)
		@board1[element] = value
	end
	def get_element(element)
		@board1[element]
	end
	def undo(element)
		@board1[element] = ' '
	end
	def empty_spots
		empty_spots = []
		@board1.size.times do |i|
			if @board1[i] == ' '
				empty_spots << i
			end
		end
		return empty_spots
	end
	def print_board
		puts @board1[0] +"|"+ @board1[1] +"|"+ @board1[2] +"\n"+
			 @board1[3] +"|"+ @board1[4] +"|"+ @board1[5] +"\n"+
			 @board1[6] +"|"+ @board1[7] +"|"+ @board1[8] 
  	end
end
#binding.pry