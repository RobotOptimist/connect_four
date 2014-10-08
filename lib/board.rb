class Board
		attr_accessor :board
		def initialize(start = [])
			@board = Array.new(6){Array.new(7){{:blank => true, :red => false, :yellow => false}}}
		end
		
		def display
		end
		
end
