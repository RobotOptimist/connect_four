class Game
		attr_accessor :player, :player2, :board 
		
		def initialize
			@player = Player.new
			@player2 = Player.new
			@board = Board.new
		end
		
		def start(name = gets.chomp, name2 = gets.chomp)
			puts "Welcome to Connect Four!"
			puts "Player 1"
			@player.info(name)
			puts "Player 2"
			@player2.info(name2)
			[@player.name, @player2.name]
		end
		
		def turn(player,board)			
		end
		
		def win?
		end
		
		def flow
		end
		
end