class Player
	attr_accessor :name
	def initialize			
	end
	
	def info (user_input = gets.chomp)
		puts "What is your name?"
		@name = user_input
	end
		
end
