# Anagram Mystery

![Letters](https://images.unsplash.com/photo-1461958508236-9a742665a0d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80)
#### Raphael Schaller raphaelphoto.ch

## Anagrams

An anagram is a word or phrase formed from another by rearranging its letters, eg. SILENT is an anagram of LISTEN

## Task

Create a command-line application to determine if a given word has a corresponding anagram given a file with a list of anagrams

## User Story

```
As an investigator,
I would like to check whether a word is an anagram of any of the words in a given list,
So I can solve the mystery of the crime, given the clues left behind
```

## Usage

1. Clone the repository 

2. Run `bundle` to install dependencies

3. Run `ruby init.rb` to start the application


## Tests

1. Clone the repository 

2. Run `bundle` to install dependencies

3. Run `rspec` to start the testrunner


## Design

Designed the project using a Test Driven Development approach. Feature tests were used to guide the process of writing unit tests and only then application code

## Approach

Anagram checker uses a simple algorithm whereby if two words are anagrams then they will have the same characters and number of characters once sorted alphabetically. 

I have then implemented a sorting of the file of anagrams into a hash/dictionary. This is in order to make the lookup process efficient when given a word to check against the file of anagrams


## Extensions

I would add error handling to satisfy any issues with incorrect filenames, files not existing etc. Would continue to refactor in order to encapsulate further methods in the main class

