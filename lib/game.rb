require_relative 'player'
require_relative 'board'

class Game
		attr_accessor :player, :player2, :board 
		
		def initialize
			@player = Player.new
			@player2 = Player.new
			@board = Board.new
		end
		
		def assign_names
			@player.info
			@player2.info
		end
		
		def assign_colors
			puts "Player 1, you're red!"
			@player.color = :red
			puts "Player 2, you're yellow!"
			@player2.color = :yel
		end
		
		def turn(player)
			puts "Your turn #{player.name}"
			puts "Which column?"
			col = gets.chomp.to_i
			@board.move(col, player.color)
			@board.display
		end
		
		def flow
			assign_names
			assign_colors
			win = ""
			@board.display
			until win == "red" || win == "yellow" do
				turn(@player)
				turn(@player2)
				win = @board.find_win
			end
		end
		
end