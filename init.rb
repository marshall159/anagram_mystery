#!/usr/bin/env ruby

# Launch from command line to get started 

require_relative('lib/anagram')

found_anagrams = false

while not found_anagrams

    puts "Enter word to search for: "
    word = gets.chomp

    puts "Enter file to search in: "
    file = gets.chomp 

    anagram_finder = Anagram.new(file)
    anagram_finder.list_anagrams(word)

    puts 'Enter "s" to search again or "q" to quit'
    command = gets.chomp

    if command.downcase == "q" 
        found_anagrams = true
    else
        puts "Please enter a valid command"
    end
end