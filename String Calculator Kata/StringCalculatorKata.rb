class StringCalculatorKata
    def initialize
      @array_negatives_numbers = []
    end

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
            0
        else
            array_of_numbers = array[1].split(array[0])
            array_of_numbers.each {|number|
                sum += process_number(number)
            }
        end
        if @array_negatives_numbers.length > 0
            raise "Negatives not allowed #{@array_negatives_numbers}"
        else
            sum
        end
    end

    def process_number(number)
        if number.to_i < 0
            @array_negatives_numbers.push(number)
        end

        number.to_i
    end
end