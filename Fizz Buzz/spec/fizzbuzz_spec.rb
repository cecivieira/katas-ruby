require 'rspec'
require_relative '../Fizzbuzz'

RSpec.describe 'Fizzbuzz' do
  describe "contador" do

    it "Print 'Fizz' instead of number which is divisible by 3" do
      fizzBuzz = Fizzbuzz.new
      contador = fizzBuzz.contador(3)
      expect(contador).to eq([1,2,'Fizz'])
    end

    it "Print 'Buzz' instead of number which is divisible by 5" do
      fizzBuzz = Fizzbuzz.new
      contador = fizzBuzz.contador(5)
      expect(contador).to eq([1,2,'Fizz',4,'Buzz'])
    end
  end

end