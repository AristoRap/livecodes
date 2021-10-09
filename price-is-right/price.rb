# when their code works, increase sup's value here
sup = 100
inf = 1
# random draw between inf and sup
price = rand(inf..sup)

puts "----------------------------------------"
puts "-----Welcome to The Price is Right!-----"
puts "----------------------------------------"

puts "Guess the price of this wonderful imaginary product"

# # In the beginning, the student choose a price at each iteration
# print "> "
# guess = gets.chomp

# When they realize that the shortest way is to follow a dichotomous approach, you can let the program pick the best guesses
guess = (sup + inf) / 2

# display it to the audience
puts "You think the price is #{guess}..."
counter = 1
while guess != price
  if guess < price
    puts "It's more!"
    # If it's more, the price is included between guess and sup
    inf = guess
  else
    puts "It's less!"
    # If it's less, the price is included between inf and guess
    sup = guess
  end
  puts "Take another guess!"
  # # Same remark
  # print "> "
  # guess = gets.chomp
  guess = (sup + inf) / 2
  puts "You think the price is #{guess}..."
  counter += 1
end

puts "******************************"
puts "-------Congratulations!-------"
puts "******************************"

puts "The price was #{price} :)"
puts "You needed #{counter} tries!"
