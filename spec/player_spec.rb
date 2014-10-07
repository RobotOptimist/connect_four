require 'spec_helper'

describe Player do

	before :each do
		@player = Player.new
	end
	
	before :all do
		@player_too = Player.new
	end
	
	describe '#new' do
		it 'creates an instance of Player' do
			expect(@player).to be_an_instance_of Player
		end
	end
	
	describe '#info' do
		let(:user_input) {"James"}
	
		it 'asks for your name' do
			expect(@player_too.info(user_input)).to eq("James")			
		end
		
		it 'stores your name' do
			expect(@player_too.name).to eq("James")
		end
		
	end

end