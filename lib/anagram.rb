class Anagram

  def initialize(file_name)
    @all_words = read_file(file_name)
  end

  def is_anagram?(word_one, word_two)
    sorted_word_one = sort_word_alphabetically(word_one)
    sorted_word_two = sort_word_alphabetically(word_two)

    sorted_word_one == sorted_word_two 
  end

  def read_file(file_name)
    words = File.readlines(file_name)
    remove_whitespace(words)
  end

  def list_anagrams(word)
    grouped_anagrams = group_anagrams(all_words)
    sorted_word = sort_word_alphabetically(word)

    puts grouped_anagrams.fetch(sorted_word, 'Not found')
  end

  def group_anagrams(words_array)
    grouped_anagrams = {}

    words_array.each do |word|
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

  def remove_whitespace(words)
    words.map { |word| word.strip }
  end

  def sort_word_alphabetically(word)
    word.split('').sort.join 
  end
end