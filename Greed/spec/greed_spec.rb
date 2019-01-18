require 'rspec'
require_relative '../Greed.rb'

RSpec.describe 'Greed' do
  describe "score" do
    it 'should return 1000 points if there is three numbers one' do
      greed = Greed.new
      result = greed.score([1,1,1,3,2])
      expect(result).to eq(1000)
    end

    it 'should return (100*x) points if there is three numbers x' do
      greed = Greed.new
      result = greed.score([2,2,2,3,4])
      expect(result).to eq(200)
    end

    it 'should return 100 points for each numbers one, besides the first requisit' do
      greed = Greed.new
      result = greed.score([1,1,1,2,1])
      expect(result).to eq(1100)
    end

    it 'should return 50 points for each numbers five, besides the second requisit' do
      greed = Greed.new
      result = greed.score([5,2,3,4,6])
      expect(result).to eq(50)
    end



  end
end