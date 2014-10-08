require 'spec_helper'

describe Board do

	before :each do
		@board = Board.new
	end
	
	describe '#new' do
		it 'creates an instance of Board' do
			expect(@board).to be_an_instance_of Board
		end
		
		it 'assigns values to the board instance variable' do
			expect(@board.board).to be_truthy
		end
	end
	
	describe '#board' do
		it 'contains an array of 6 elements' do
			expect(@board.board.size).to eq(6)
		end
		
		describe 'a board element' do
		
			it 'contains an array of 7 elements' do
				expect(@board.board[0].size).to eq(7)
			end
						
			describe 'the base element of the board' do
				it 'is a hash' do
					expect(@board.board[0][0]).to be_an_instance_of Hash
				end
				
				it 'has 3 elements' do
					expect(@board.board[0][0].size).to eq(3)
				end
					
				describe 'each hash' do
					it 'has an element that is blank' do
						expect(@board.board[0][0].has_key?(:blank)).to be true
					end
						
					it 'has an element that is red' do
						expect(@board.board[0][0].has_key?(:red)).to be true
					end
						
					it 'has an element that is yellow' do
						expect(@board.board[0][0].has_key?(:yellow)).to be true
					end
				end
			end
			
			def only_one_true?(values)
				return true if values.count(true) == 1
				false
			end
			
			describe 'each base element of the board' do
				it 'has only one value that is true' do
					truths = []
					@board.board.each do|row| 
						row.each do |column| 
							intersection = column.values
							truths << only_one_true?(intersection)
							end
						end
					expect(truths.count(true)).to eq(truths.size)
				end
			end			
		end	
	end
end
