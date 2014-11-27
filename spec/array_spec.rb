require 'spec_helper'

describe Array do 
	before do
		@test_array = Array.new ["apple", "models", "how", "our"]
		@new_string = ''
		@number_word = []
	end
	describe '#my_each' do
		it "return each string in the array" do
			@test_array.my_each do |string, n| 
				@new_string << string
				@number_word = n
			end
			expect(@new_string).to eql('applemodelshowour')
#			expect(@number_word).to eql([0,1,2,3])
		end
	end

	describe '#my_select' do
		it "array of selected value" do
			new_arr = @test_array.my_select do |x|
				x == 'apple'
			end
			expect(new_arr).to eql(['apple'])
		end
	end

	describe '#my_each_with_index' do
		it "return each string in the array" do
			@test_array.my_each_with_index do |string, n| 
				@new_string << string
				@number_word << n
			end
			expect(@new_string).to eql('applemodelshowour')
			expect(@number_word).to eql([0,1,2,3])
		end
	end

	describe '#my_all?' do
		it "ture if all the same" do
			all = @test_array.my_all? do |x|
				x == 'apple'
			end
			expect(all).to eql(false)
		end
	end

	describe '#my_count' do
		it 'how many words in the array' do
			expect(@test_array.my_count("apple")).to eql(1) 
		end
	end

	describe '#my_map' do
		it 'colloct words' do
			arr = @test_array.my_map do |x|
				x.length <= 3
			end
			expect(arr).to eql(['how','our'])
		end
	end

end