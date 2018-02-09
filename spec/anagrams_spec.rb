require('rspec')
require('anagrams')

describe('Anagrams') do
  describe('#initialize') do
    it ('stores two input words in intance variables that are readable and writeable') do
      anagram = Anagrams.new('rat','tar')
      expect(anagram.word1).to(eq('rat'))
      expect(anagram.word2).to(eq('tar'))
      anagram.word1 = 'car'
      expect(anagram.word1).to(eq('car'))
    end
  end

  describe('#is_anagram?') do
    it ('checks single letter words') do
      anagram = Anagrams.new('a','a')
      expect(anagram.is_anagram?).to(eq(true))
    end

    it ('checks multi-letter words') do
      anagram = Anagrams.new('rat','tar')
      expect(anagram.is_anagram?).to(eq(true))
    end
  end

end
