class Game
		attr_accessor :player, :player2, :board 
		
		def initialize
			@player = Player.new
			@player2 = Player.new
			@board = Board.new
		end
		
		def start
		end
		
		def turn(player,board)			
		end
		
		def win?
		end
		
		def flow
		end
		
end