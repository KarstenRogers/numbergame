MIN = 0
MAX = 1000
answer = ""
guess = 501
upper = MAX
lower =  MIN
counter = 0

puts "pick a number between #{MIN} AND #{MAX}"

while answer != "y"
  counter += 1 unless answer == "y"
  puts "is your number #{guess}?"
  print "(y)es, (h)igher or (l)ower:"
  answer= gets.chomp

  if answer == "h"
    lower = guess +1
    guess = ((upper - lower)/2) + lower
    puts guess
  end

  if answer == "l"
    upper = guess +1
    guess = ((lower - upper)/2) + upper
    puts guess 
  end
  
  if answer == "y" 
    guess = (lower + upper) / 2 
  end 
end
puts "The answer is #{guess}" 
  puts "Only #{counter} tries!"






