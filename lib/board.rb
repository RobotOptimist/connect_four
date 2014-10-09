class Board
		attr_accessor :board
		def initialize(start = [])
			@board = Array.new(6){Array.new(7){{:bla => true, :red => false, :yel => false}}}
		end
		
		def display
			puts ""
			puts "   ====================================="
			@board.each do |row|
				print "   ="
				row.each do |column|
						intersection = column.select{|k,v| v == true}
						print "[#{intersection.key(true)}]"
					end
					puts "="
				end
			puts "   ====================================="
			puts ""
		end
		
		def move(column, color, row = 5)
			color_enforcement(color)
			if row < 0
				puts "Column is full."
				return false
			elsif @board[row][column][:bla] == false
				move(column, color, row-1)
			elsif @board[row][column][:bla] == true
				@board[row][column][:bla] = false
				@board[row][column][color] = true
				return true
			end
		end
		
		def color_enforcement(color)
			raise ArgumentError, 'Argument is not :red or :yel' unless color == :red || color == :yel
		end
		
end
