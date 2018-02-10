#!/usr/bin/env ruby
require('./lib/anagrams')
require('./lib/dictionary')


system 'clear'
puts 'Enter 1 if you want to check if two words or phrases are anagrams, or 2 if you want to see all possible anagrams of a single word:'
choice = gets.chomp
if choice == '1'
  puts 'Check if two words or phrases are anagrams or antigrams'
  puts 'Enter first word or phrase:'
  word1 = gets.chomp
  puts 'Enter second word or phrase:'
  word2 = gets.chomp
  words = Anagrams.new(word1, word2)
  if (words.in_dict?(word1) && words.in_dict?(word2))
    if words.anagram?
      puts 'These words are anagrams.'
    elsif words.antigram?
      puts 'These words have no letter matches and are antigrams.'
    else
      puts 'These words are neither anagrams nor antigrams.'
    end
  elsif
    puts "Invalid word input."
  end
elsif choice == '2'
  puts 'Enter a word to find all possible anagrams:'
  input = gets.chomp
  generator = Anagrams.new(input, '')
  generator.dict_hash
  results = generator.generate
  puts results
end
