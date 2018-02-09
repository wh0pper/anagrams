require('rspec')
require('anagrams')

describe('Anagrams') do
  describe('#initialize') do
    it ('stores two input words in intance variables that are readable and writable') do
      anagram = Anagrams.new('rat', 'tar')
      expect(anagram.word1).to(eq('rat'))
    end

  end

end
