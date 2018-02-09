#!/usr/bin/env ruby

class Anagrams
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def is_anagram?
    letters1 = @word1.split('')
    letters2 = @word2.split('')
    letters1 & letters2 == letters1
  end

end
