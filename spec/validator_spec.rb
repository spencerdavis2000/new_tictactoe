require 'validator'


describe Validator do 

	it "should validate false when input a string" do
		input = Kernel.stub(:gets).and_return("hehehehe")
		validate = Validator.new
		validate.is_valid?(input).should == false
	end
	it "should validate true when input an Integer" do
		input = 9
		validate = Validator.new
		validate.is_valid?(input).should == true
	end
	it "should validate false when pass in a float" do
		input = 2.33
		validate = Validator.new
		validate.is_valid?(input).should == false
	end
	
end
