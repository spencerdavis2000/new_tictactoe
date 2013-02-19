require 'io'

describe Io do 

	it "gets a move from user" do
		Kernel.stub(:gets).and_return("10\n")
		io = Io.new
		io.input.should == 10
	end

	it "if move is not a number, returns nil" do
		Kernel.stub(:gets).and_return('abc\n')
		Kernel.should_receive(:puts).with("Invalid entry.  Integers only please")
		io = Io.new
		io.input
	end
end