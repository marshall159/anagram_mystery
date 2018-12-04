class Anagram
  def is_anagram?(word_one, word_two)
    word_one.split('').sort() == word_two.split('').sort()
  end

  def read_file(file_name)
    words = File.readlines(file_name)
    remove_whitespace(words)
  end

  private 

  def remove_whitespace(words)
    words.map { |word| word.strip }
  end
end