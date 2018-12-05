# Launch from command line to get started 

require_relative('lib/anagram')
require_relative('lib/anagram_file')


found_anagrams = false

while not found_anagrams

    puts "Enter word to search for: "
    word = gets.chomp

    puts "Enter file to search in: "
    file = gets.chomp 

    anagram_file = AnagramFile.new(file)
    anagram_finder = Anagram.new(anagram_file)
    anagram_finder.list_anagrams(word)

    puts 'Enter "s" to search again or "q" to quit'
    command = gets.chomp
    
    while not found_anagrams
        if command.downcase == "q" 
            found_anagrams = true
        elsif command.downcase == "s"
            break
        else
            puts "Please enter a valid command"
            command = gets.chomp
        end
    end
end