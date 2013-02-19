class Player
	#attributes of Player are: I/O, player1, player2 (values X or O)
	attr_reader :player1, :player2

	def initialize
		@player1 = 'X'
		@player2 = 'O'
	end
end

