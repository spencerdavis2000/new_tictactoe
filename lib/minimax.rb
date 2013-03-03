$LOAD_PATH.unshift File.expand_path('../',__FILE__)
require 'board'
require 'pry'
require 'rules'
class Minimax
	include Rules
	attr_accessor :board 

	# def min_max(board, player)
	# 	@board = board
	# 	empty_pos = board.empty_spots
	# 	empty_pos.each do |empty|
	# 		@board.set_element(empty, player)
	# 		p @board.board
	# 		if win?
	# 			return empty
	# 		else
	# 			@board.undo(empty)
	# 		end
	# 	end
	# 	return empty_pos[0]
	# end
	# def recursive(board, player)
	# 	p board.print_board
	# 	@board = board
	# 	empty_pos = board.empty_spots
	# 	empty_pos.each do |empty|
	# 		@board.set_element(empty, player)
	# 		player = flip_player(player)

	# 		recursive(@board, player)
			
	# 		@board.undo(empty)
	# 		player = flip_player(player)

	# 	end
	# 	return nil
	# end

	def score(board, player)
		@board = board

		if win?
			return 1 if @winner == player
			return -1
		end
		return 0 if over?

		lowest_score = 1
		player = flip_player(player)
		empty_pos = @board.empty_spots
		empty_pos.each do |empty|
			@board.set_element(empty, player)
			score = -1 * score(@board, player)

			if score < lowest_score
				lowest_score = score
			end

			@board.undo(empty)
		end

		return lowest_score
	end

	def best_move(board, player)
		@board = board
		empty_pos = @board.empty_spots
		player = flip_player(player)

		score_board = {}

		empty_pos.each do |empty|
			@board.set_element(empty, player)
			score = -1 * score(@board, player)
			score_board[empty] = score
			@board.undo(empty)
		end

		max_score = score_board.values.min
		p score_board
		score_board.each do |key, value|
			return key if max_score == value
		end
	end

	def flip_player(player)
		if player == 'X'
			return 'O'
		elsif player == 'O'
			return 'X'
		end	
	end

end
#binding.pry



