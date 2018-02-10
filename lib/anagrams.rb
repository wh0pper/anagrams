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

  def dict_hash #simplifies unix dictionary to hash, key values all unique sorted letters
    @words = {}
    File.open("/usr/share/dict/words") do |file|
      file.each do |line|
        line.strip!
        key = line.chars.sort.join
        if !@words.has_key?(key) #if key doesn't exist, store that word
          @words.store(key, line)
        else  #if key already exists, append this word to value
          value = @words.fetch(key)
          value = value + ' ' + line
          @words[key] = value
        end
      end
    end
  end

  def generate
    key = @word1.chars.sort.join
    @words[key]
  end

end
