class Io
	def input
		begin
			puts "Please enter a value 1-9: "
			input = Kernel.gets.chomp
			Integer(input)
		rescue
			Kernel.puts "Invalid entry.  Integers only please"
		ensure
		end
	end
end 