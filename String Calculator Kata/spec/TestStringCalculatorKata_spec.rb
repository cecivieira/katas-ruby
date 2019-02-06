require 'rspec'
require_relative '../StringCalculatorKata'

RSpec.describe StringCalculatorKata do

    describe "Add" do
        it "Should return zero when no arguments" do
            stringCalculatorKata = StringCalculatorKata.new
            sum = stringCalculatorKata.Add("")
            expect(sum).to eq(0)
        end

        it "Should return the number when only one parameter is passed" do
            stringCalculatorKata = StringCalculatorKata.new
            sum = stringCalculatorKata.Add("1")
            expect(sum).to eq(1)
        end

        it "Should return the sum of two numbers when two numbers are passed" do
            stringCalculatorKata = StringCalculatorKata.new
            sum = stringCalculatorKata.Add("8,1")
            expect(sum).to eq(9)
        end

        it "Allow the Add method to handle an unknown amount of numbers" do
            stringCalculatorKata = StringCalculatorKata.new
            sum = stringCalculatorKata.Add("1,2,3,4,5,1")
            expect(sum).to eq(16)
        end

        it "Allow the Add method to handle new lines between numbers (instead of commas)" do
            stringCalculatorKata = StringCalculatorKata.new
            sum = stringCalculatorKata.Add("1\n2,3")
            expect(sum).to eq(6)
        end
        
        it "Support different delimiters, looks like this: [delimiter]\n[numbers...]" do
            stringCalculatorKata = StringCalculatorKata.new
            sum = stringCalculatorKata.Add("&\n4&2&1")
            expect(sum).to eq(7)
        end

        it "Calling Add with a negative number will throw an exception \"negatives not allowed\" - and the negative that was passed." do
            stringCalculatorKata = StringCalculatorKata.new            
            expect{stringCalculatorKata.Add("&\n4&-2")}.to raise_error("Negatives not allowed (-2)")
        end

        
    end
end