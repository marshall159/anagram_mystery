class Anagram
  def is_anagram?(word_one, word_two)
    sorted_word_one = sort_word_alphabetically(word_one)
    sorted_word_two = sort_word_alphabetically(word_two)

    sorted_word_one == sorted_word_two 
  end

  def read_file(file_name)
    words = File.readlines(file_name)
    remove_whitespace(words)
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

  def remove_whitespace(words)
    words.map { |word| word.strip }
  end

  def sort_word_alphabetically(word)
    word.split('').sort.join 
  end
end