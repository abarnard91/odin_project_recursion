def fibonacci_sequencer(how_many_numbers)

  fibonacci_numbers = [0]
   (how_many_numbers-1).times do 
    if fibonacci_numbers.length <= 1
      f_n = 1  
    else
      f_n = fibonacci_numbers[-1] + fibonacci_numbers[-2]
    end
    fibonacci_numbers << f_n
  end
  puts "fibbonacci to #{how_many_numbers} places iteratively is #{fibonacci_numbers}"
end


def recursive_fibonacci(nums)
  if nums < 3 #base cut off at 3 so that it accounts for the count starting at f[0]
    fibonacci_array = [0,1]
  else
    fibonacci_array = recursive_fibonacci(nums-1)
    fibonacci_array << (fibonacci_array[-1] + fibonacci_array[-2])
  end
end

fibonacci_sequencer(8)
fibonacci_sequencer(12)

puts "fibonacci to 8 places recurssively #{recursive_fibonacci(8)}"
puts "fibonacci to 12 places recurssively #{recursive_fibonacci(12)}"
