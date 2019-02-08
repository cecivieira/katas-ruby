class Fizzbuzz
  def contador(number1, number2=0)

    if number2 > 0
      array = (number1..number2).to_a
      array.each do |number|
        index = number-1
        if number % 15 == 0
          array[index] = 'FizzBuzz'
        elsif number % 3 == 0
          array[index] = 'Fizz'
        elsif number % 5 == 0
          array[index] = 'Buzz'
        end
      end

    else
      array = [number1]
      if number1 % 15 == 0
        array[0] = 'FizzBuzz'
      elsif number1 % 3 == 0
        array[0] = 'Fizz'
      elsif number1 % 5 == 0
        array[0] = 'Buzz'
      end
      
     array
    end
  end

end