class AnagramFile

  def initialize(file_name)
    @file_name = file_name
  end

  def all_words
    words = File.readlines(file_name)
    remove_whitespace(words)
  end

  private

  attr_reader :file_name

  def remove_whitespace(words)
    words.map { |word| word.strip }
  end

end