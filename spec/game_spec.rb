require 'spec_helper'

describe Game do

	before :each do
		@game = Game.new
	end
	
	describe '#new' do
		it 'creates an instance of Game' do
			expect(@game).to be_an_instance_of Game
		end
		
		it 'creates an instance variable of Player' do
			expect(@game.player).to be_an_instance_of Player			
		end
		
		it 'creates a second instance variable of Player' do
			expect(@game.player2).to be_an_instance_of Player			
		end
		
		it 'creates an instance variable of Board' do
			expect(@game.board).to be_an_instance_of Board
		end
		
	end
	
	describe '#start' do
		let(:player1) {"James"}
		let(:player2) {"Becca"}
		
		it 'assigns names to each player' do
			expect(@game.start(player1,player2)).to eq(["James","Becca"])
		end
		
		
	end

end