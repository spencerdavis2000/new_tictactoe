# $LOAD_PATH.unshift File.expand_path('../', __FILE__)
require 'player_io'

describe PlayerIO do
	# it "should read user input" do
	# 	player_io = PlayerIO.new
	# 	player_io.enter_value(3).should == 3
	# end

	it "gets a move from user" do
		Kernel.stub(:gets).and_return("10\n")
		player_io = PlayerIO.new
		player_io.get_move.should == 10
	end

	it "if move is not a number, returns nil" do
		Kernel.stub(:gets).and_return('abc\n')
		Kernel.should_receive(:puts).with("Invalid entry.  Integers only please")
		player_io = PlayerIO.new
		player_io.get_move
	end
end