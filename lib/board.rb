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
		
		def cell_check(row = 0, column = 0)
			cell = @board[row][column].key(true)
		end
		
		def find_contiguous_color(array)
			return "nothing" if array.size < 4
			four_array = array[0,4]
			return "red" if four_array.count(:red) == 4
			return "yellow" if four_array.count(:yel) == 4
			array.shift
			find_contiguous_color(array)
		end
		
		def convert_rows_to_arrays(rows = [], x = 0)
			return rows if x > 5
			row = []; y = 0
			7.times {row << cell_check(x,y); y += 1 }
			rows << row
			x += 1
			convert_rows_to_arrays(rows,x)
		end
		
		def convert_columns_to_arrays(columns =[], y = 0)
			return columns if y > 6
			column = []; x = 0
			6.times {column << cell_check(x,y); x += 1 }
			columns << column 
			y += 1
			convert_columns_to_arrays(columns,y)
		end
		
		def convert_diagonals_to_arrays(diagonals = [], start = 0)
			diagonal = []; x = start; y = 0
			until x > 5 do
				diagonal << cell_check(x,y)
				x += 1; y += 1
			end
		end
		
		def row_win
		end
		
end
