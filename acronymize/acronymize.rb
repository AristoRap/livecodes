def acronymize(sentence)
  """
  Method to transform a sentence into its acronym
  example: 'What the fuck' becomes 'WTF'
  """
  words = sentence.split(" ") # Split the sentence into an array of words
  acronym = []
  words.each do |word|
    word = word.capitalize # capitalize every word
    letter = word[0] # Take the first letter
    acronym << letter # Put every letter into an array
  end
  return acronym.join('')
end

puts "What is your sentence?"
sentence = gets.chomp

puts acronymize(sentence)
