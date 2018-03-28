require './lib/night_write'
require 'pry'


lines_of_text = File.open('./lib/message.txt', 'r')
input = lines_of_text.read.delete("\n")
num_of_characters = input.length
lines_of_text.close

night_write = NightWrite.new(input)

lines_of_text = File.new('./lib/braille.txt', 'w')
lines_of_text.puts(night_write.update_output)
lines_of_text.close

puts "Created #{ARGV[1]} containing #{num_of_characters} characters."
