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

  describe('#in_dict?') do
    it ('checks if inputs are words or not') do
      words = Anagrams.new('zygote', 'upswing')
      expect(words.in_dict?).to(eq(true))
    end

    it ('returns false if words are not found in unix dictionary') do
      words = Anagrams.new('psde', 'ckdok')
      expect(words.in_dict?).to(eq(false))
    end
  end

  describe('#anagram?') do
    it ('checks single letter words') do
      anagram = Anagrams.new('a','a')
      expect(anagram.anagram?).to(eq(true))
    end

    it ('checks multi-letter words') do
      anagram = Anagrams.new('eat','tea')
      expect(anagram.anagram?).to(eq(true))
      anagram.word1 = 'listen'
      anagram.word2 = 'silent'
      expect(anagram.anagram?).to(eq(true))
    end

    it ('is case insensitive') do
      anagram = Anagrams.new('EAT', 'tea')
      expect(anagram.anagram?).to(eq(true))
    end

    it ('works for multi-word anagrams') do
      anagram = Anagrams.new('School master','the classroom')
      expect(anagram.anagram?).to(eq(true))
    end
  end

  describe('#antigram?') do
    it ('if words arent antigrams, checks if they are antigrams') do
      antigram = Anagrams.new('cat','fun')
      expect(antigram.antigram?).to(eq(true))
    end

    it ('neither anagrams nor antigrams') do
      antigram = Anagrams.new('cat','fan')
      expect(antigram.antigram?).to(eq(false))
    end

    it ('multi-word antigrams') do
      antigram = Anagrams.new('eat it','for on')
      expect(antigram.antigram?).to(eq(true))
    end
  end

  describe('#generator') do
    it ('returns array of all possible anagrams if second argument is empty') do
      generator = Anagrams.new('those','')
      expect(generator.generate).to(eq(['ethos','shote']))
    end
  end

end
