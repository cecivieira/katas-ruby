require 'rspec'
require_relative '../StringCalculatorKata'

RSpec.describe StringCalculatorKata do

    describe "Add" do
        it "Create a simple String calculator with a method int Add(string numbers). The method can take 
        0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0)" do
            stringcalculator = StringCalculatorKata.new
            sum = stringcalculator.Add(2, 3)
            expect(sum).to eq(5)        
        end

        it "Create a simple String calculator with a method int Add(string numbers). The method can take 
        0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0)" do
            stringcalculator = StringCalculatorKata.new
            sum = stringcalculator.Add(2)
            expect(sum).to eq(2)
        end

        it "Create a simple String calculator with a method int Add(string numbers). The method can take 
        0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0)" do
            stringcalculator = StringCalculatorKata.new
            sum = stringcalculator.Add()
            expect(sum).to eq(0)
        end

        it "Allow the Add method to handle an unknown amount of numbers" do
            stringcalculator = StringCalculatorKata.new
            sum = stringcalculator.Add()
            expect(sum).to eq()
        end
    end
end