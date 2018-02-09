#!/usr/bin/env ruby

class Anagrams
  attr_accessor(:word1, :word2)

  def initialize(word1, word2)
    @word1 = word1.downcase
    @word2 = word2.downcase
  end

  def in_dict?(word)
    words = []
    File.open("/usr/share/dict/words") do |file|
      file.each do |line|
        words.push(line.strip)
      end
    end
    if words.include?(word)
      return true
    else
      return false
    end
  end

  def anagram?
    letters1 = @word1.delete(' ').split('').sort
    letters2 = @word2.delete(' ').split('').sort
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
    letters1 = @word1.delete(' ').split('').sort
    letters1.each do |letter|
      if (@word2.include?(letter))
        return false
      end
    end
    return true
  end

  # def generate
  #   letters = @word1.delete(' ').split('')
  #   combos = letters.permutation(letters.length).to_a
  #   results = []
  #   combos.each do |combo_array|
  #     combo = combo_array.join
  #     if
  # end

end
