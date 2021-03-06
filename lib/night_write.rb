require './lib/translate_to_braille'
require 'pry'


lines_of_text = File.open('message.txt', 'r')
input = lines_of_text.read.delete("\n")
num_of_characters = input.length
lines_of_text.close

translate_to_braille = TranslateToBraille.new(input)

lines_of_text = File.new('braille.txt', 'w')
lines_of_text.puts(translate_to_braille.update_output)

lines_of_text.close

puts "Created #{ARGV[1]} containing #{num_of_characters} characters."
