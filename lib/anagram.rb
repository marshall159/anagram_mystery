require_relative 'anagram_file'

class Anagram

  def initialize(anagram_file)
    @anagram_file = anagram_file
    @all_words = @anagram_file.all_words
  end

  def is_anagram?(word_one, word_two)
    sorted_word_one = sort_word_alphabetically(word_one)
    sorted_word_two = sort_word_alphabetically(word_two)

    sorted_word_one == sorted_word_two 
  end

  def list_anagrams(word)
    grouped_anagrams = group_anagrams(all_words)
    sorted_word = sort_word_alphabetically(word)

    puts grouped_anagrams.fetch(sorted_word, 'Not found')
    grouped_anagrams.fetch(sorted_word, 'Not found')
  end

  def group_anagrams(all_words)
    grouped_anagrams = {}

    all_words.each do |word|
      sorted_word = sort_word_alphabetically(word)

      if grouped_anagrams[sorted_word]
        grouped_anagrams[sorted_word].push(word)
      else
        grouped_anagrams[sorted_word] = [word]
      end
    end
    grouped_anagrams
  end

  private 

  attr_reader :all_words

  def sort_word_alphabetically(word)
    word.split('').sort.join 
  end
end