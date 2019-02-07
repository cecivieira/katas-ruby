class Fizzbuzz
  def contador(number)
    array = (1..number).to_a
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