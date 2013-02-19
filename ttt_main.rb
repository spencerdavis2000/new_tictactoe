$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'game'
require 'player'
require 'pry'
require 'validator'
require 'io'


class Start
	attr_reader :value, :player, :game, :validate, :io

	def initialize
		@value = []
		@io = Io.new
		@player = Player.new
		@game = Game.new(@player.player1)
		@validate = Validator.new
	end

	def play_game
		while !@game.over?
			make_move
			@game.print_board
		end
	end
	def make_move
		made_move = false
		while !made_move
			move = @io.input
			if @validate.is_valid?(move)
				move -= 1
				@value << move
				if @game.board[move] == ' '
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