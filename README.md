# Anagrams
Ruby script to check if words are Anagrams, completed for Epicodus - Ruby Week 1 Code Review

#### By Jared Clemmensen

## Description
Takes user input words and checks if they are anigrams or antigrams. Additional feature returns all possible single-word anagrams of an input word.

## Specifications
1. Class takes two strings and saves them as instance variables
  ** Example Input: Anagrams.new('word1', 'word2')
  ** Example Output: "/@word1", "/@word2"
2. Method checks if words are anagrams
  * Example Input: "eat", "tea"
  * Example Output: is_anagram? returns true
3. Method ignores capitalization
  * Example Input: "EAT", "tea"
  * Example Output: is_anagram? returns true
4. Method works with numbers
  * Example Input: "310", "103"
  * Example Output: is_anagram? returns true
5. If words aren't anagrams, another method checks if they are antigrams
  * Example Input: "cat", "peg"
  * Example Output: is_anigram? returns false, is_antigram? returns true
6. Method checks to see if inputs are real words
  * Example Input: "dog", "ogd"
  * Example Output: "Invalid word input"

### Anagram Generator Feature
7. Method takes one input word and returns all possible single-word anagrams of that word
    * Example Input: "those"
    * Example Output: "shote, ethos, those"

## Setup/Installation Requirements
Running 'anagrams_script.rb' located in the project root directory launches command line interactivity for the anagram methods.

This script requires the standard dictionary on unix machines at /usr/share/dict/words. If your machine doesn't have this file some features will not work.

## Technologies Used
This project is written in ruby 2.5.0 and uses rspec gem.

### License

Copyright (c) 2018 Jared Clemmensen

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
