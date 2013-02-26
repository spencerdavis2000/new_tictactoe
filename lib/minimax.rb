$LOAD_PATH.unshift File.expand_path('../',__FILE__)
require 'board'
require 'pry'
require 'rules'
class Minimax
	include Rules
	attr_accessor :board 

	def min_max(board, player)
		@board = board
		empty_pos = board.empty_spots
		empty_pos.each do |empty|
			@board.set_element(empty, player)
			#p @board.board_state
			if win?
				return empty
			else
				@board.undo(empty)
			end
		end
		return empty_pos[0]
	end
end