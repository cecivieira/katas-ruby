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
      array = []
      array.push(number1)
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
    end
  end
end