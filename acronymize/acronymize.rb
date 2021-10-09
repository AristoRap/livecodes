def acronymize(sentence)
  words = sentence.split(" ")
  acro_name = []
  words.each do |word|
    word = word.capitalize
    letter = word[0]
    acro_name << letter
  end
  return acro_name.join('')
end

puts "What is your sentence?"
sentence = gets.chomp

puts acronymize(sentence)

