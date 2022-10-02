#!/usr/bin/env ruby
require './lib/anagram_antigram.rb'

puts "Welcome to 'CHECK THAT ANAGRAM!'"
puts ""
puts "This checker will compare your two words or phrases to see if they are anagrams or antigrams."
puts ""
puts "Be sure to input real words!"
puts ""
puts "Enter a word, phrase, or sentence here:"
word_one = gets.chomp
puts "Enter a second word, phrase, or sentence here:"
word_two = gets.chomp
input = Anagrams.new(word_one, word_two)
if input.anagram === "You need to input actual words!" || input.anagram === "These words or phrases are anagrams!" || input.anagram === "These words or phrases have no letter matches and are antigrams."
  puts input.anagram
end