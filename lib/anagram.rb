class Anagram
  def is_anagram?(word_one, word_two)
    word_one.split('').sort() == word_two.split('').sort()
  end

  def read_file(file_name)
    words = File.readlines(file_name)
    remove_whitespace(words)
  end

  def group_anagrams(words_array)
    grouped_anagrams = {}
    words_array.each do |word|
      sorted_word = word.split('').sort().join()
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
end