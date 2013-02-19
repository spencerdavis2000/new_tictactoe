require 'pry'

class Validator

	def is_valid?(input)
		is_integer?(input) && correct_range?(input)
	end
	def is_integer?(input) 
		input.is_a?(Fixnum) 
	end
	def correct_range?(input)
		input -= 1
		if input >= 0 && input <= 8
			return true
		else
			return false
		end
	end
end
#binding.pry