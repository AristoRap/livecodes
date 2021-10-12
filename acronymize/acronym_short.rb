def acro_short(sentence)
  """
  Updated acronym method
  """
  sentence.split(' ').map{|word| word[0].upcase}.join('') # One liiiine
end

puts "What is your sentence?"
sentence = gets.chomp
puts acro_short(sentence)
