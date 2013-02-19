require 'player'


describe Player do
	it "should set the player1 to X and player2 to O" do
		player = Player.new
		player.players.key('player1').should == 'X'
		player.players.key('player2').should == 'O'
	end

end