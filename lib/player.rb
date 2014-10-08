class Player
	attr_accessor :name
	def initialize			
	end
	
	def get_input
		gets.chomp
	end
	
	def info
		puts "What is your name?"
		@name = get_input
	end
		
end
