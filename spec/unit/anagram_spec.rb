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

  describe '#list_anagrams' do 
    it 'takes a word and returns list of all matching anagrams' do
      word = "limes"
      list_of_anagrams = ["limes", "miles", "slime", "smile"]

      expect(anagram.list_anagrams(word)).to match_array(list_of_anagrams)
    end
  end

  describe '#group_anagrams' do
    it 'takes random words and returns a hash of anagrams grouped together' do
      array_of_words = ["limes", "miles", "slime", "smile", "bats", "stab", "tabs", "acts"]

      grouped_anagrams = {
        'eilms' => ["limes", "miles", "slime", "smile"],
        'abst' => ["bats", "stab", "tabs"],
        'acst' => ["acts"]
      }

      expect(anagram.group_anagrams(array_of_words)).to eq(grouped_anagrams)
    end
  end

end