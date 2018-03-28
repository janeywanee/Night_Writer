require './lib/translate_to_english'
require 'pry'


lines_of_braille = File.open('./lib/braille.txt', 'r')
input = lines_of_braille.read.delete("\n")
num_of_characters = input.length
lines_of_text.close

translate_to_english = TranslateToEnglish.new(input)

lines_of_braille = File.new('./lib/original_message.txt', 'w')
lines_of_braille.puts(translate_to_english.LAST METHOD GOES HERE ONCE COMPLETE

lines_of_braille.close

puts "Created #{ARGV[1]} containing #{num_of_characters} characters."
