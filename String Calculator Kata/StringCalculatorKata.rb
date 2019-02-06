class StringCalculatorKata
    
    def Add(string)
        sum = 0

        if string.start_with?(/[^0-9-]+/)
            array = string.split(string[1])
        else
            array = string.split(",\n")
        end

        if array.length == 1
            string.each_char {|number|
                sum += process_number(number)
            }
        elsif array.length == 0
            return 0
        else              
            array_of_numbers = array[1].split   (array[0])
            array_of_numbers.each {|number|
                sum += process_number(number)
            }
        end
        return sum
    end

    def process_number(number)
        if number.to_i >= 0
            return number.to_i
        else 
            raise "Negatives not allowed (#{number})"
        end
    end
    
end