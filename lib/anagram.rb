class Anagram
  def is_anagram?(word_one, word_two)
    word_one.split('').sort() == word_two.split('').sort()
  end
end