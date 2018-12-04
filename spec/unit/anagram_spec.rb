require 'anagram'

describe Anagram do
  subject(:anagram) { described_class.new }

  describe '#is_anagram?' do
    it 'returns true if two words are anagrams' do
      word_one = 'silent'
      word_two = 'listen'

      are_anagrams = anagram.is_anagram?(word_one, word_two)

      expect(are_anagrams).to eq(true)
    end

    it 'returns false if two words are not anagrams' do
      word_one = 'silent'
      word_two = 'strike'

      are_anagrams = anagram.is_anagram?(word_one, word_two)

      expect(are_anagrams).to eq(false)
    end
  end

end