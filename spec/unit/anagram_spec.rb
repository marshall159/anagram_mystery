require 'anagram'

describe Anagram do
  subject(:anagram) { described_class.new }

  describe '#is_anagram?' do
    it 'checks if two words are anagrams' do
      word_one = 'silent'
      word_two = 'listen'

      are_anagrams = anagram.is_anagram?(word_one, word_two)

      expect(are_anagrams).to eq(true)
    end
  end

end