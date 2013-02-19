class Player
	#attributes of Player are: I/O, player1, player2 (values X or O)
	attr_reader :players

	def initialize
		@players = {'X' => 'player1', 'O' => 'player2'}
	end
end

