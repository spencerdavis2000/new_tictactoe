$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'pry'
require 'game'
require 'io'
require 'player'
require 'validator'
require 'minimax'

class Start
	attr_reader :io, :player, :game, :validate
	attr_accessor :computer_opponent

	def initialize
		@computer_opponent = true
		@io = Io.new
		@player = Player.new
		@game = Game.new(@player.players.key('player1'))
		@validate = Validator.new 
		@minimax = Minimax.new
	end

	def play_game
		while !@game.over?
			make_move
			@game.print_board

			if @computer_opponent
				move = @minimax.min_max(@game.board, @game.current_player)
				@game.play_move(move)
				@game.print_board
			end
		end

		if @game.win?
			winner = @game.winner
			puts "winner is  #{player.players[winner]}: #{winner}"
		else
			puts "Draw no winner"
		end
	end
	def make_move
		made_move = false
		while !made_move
			move = @io.input
			if @validate.is_valid?(move)
				move -= 1
				if @game.board.get_element(move) == ' '
					@game.play_move(move)
					made_move = true
				else
					puts "Field already filled.  Pick another spot"
				end
			end
		end
	end
end

binding.pry

#Io.print_board(game.board)
#move = Io.ask_move
# move = ask_move
# game.play_move(move)