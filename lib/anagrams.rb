#!/usr/bin/env ruby

class Anagrams
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def anagram?
    letters1 = @word1.delete(' ').split('').sort
    letters2 = @word2.delete(' ').split('').sort
    # letters1 & letters2 == letters1
    if (letters1.length != letters2.length)
      return false
    else
      letters1.each_with_index do |index|
        if (letters1[index.to_i] != letters2[index.to_i])
          return false
        end
      end
    end
    return true
  end

  def antigram?

  end

end
