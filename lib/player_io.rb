require 'pry'
class PlayerIO

	def enter_value(value)
		value 
	end

	def get_move
		begin
			input = Kernel.gets.chomp
			Integer(input)
		rescue
			Kernel.puts "Invalid entry.  Integers only please"
		ensure
		end
	end
end

#binding.pry