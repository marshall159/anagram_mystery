# As an investigator,
# I would like to check whether a word is an anagram of any of the words in a given list,
# so that I can solve the mystery of the crime, given the clues left behind

describe 'Anagram' do
  it 'checks if a word is an anagram from a list' do
    given_there_is_a_file_of_anagrams
    when_the_user_enters_a_word
    then_a_list_of_anagrams_of_the_word_are_returned
  end

  def given_there_is_a_file_of_anagrams
    @file = 'anagrams.txt'
  end

  def when_the_user_enters_a_word
    @anagrams = anagram('smile', @file)
  end

  def then_a_list_of_anagrams_of_the_word_are_returned
    expect(@anagrams).to eq(['limes', 'miles', 'slime'])
  end
end
