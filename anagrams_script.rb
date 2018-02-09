#!/usr/bin/env ruby
require('./lib/anagrams')

system 'clear'
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
