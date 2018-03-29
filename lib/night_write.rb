require './lib/translate_to_braille'
require 'pry'


lines_of_text = File.open('./lib/message.txt', 'r')
input = lines_of_text.read.delete("\n")
num_of_characters = input.length
lines_of_text.close

translate_to_braille = TranslateToBraille.new(input)

lines_of_text = File.new('./lib/braille.txt', 'w')
lines_of_text.puts(translate_to_braille.update_output)

lines_of_text.close

<<<<<<< HEAD
  def update_output
     output = "#{line_one}\n#{line_two}\n#{line_three}"
  end

end
=======
puts "Created #{ARGV[1]} containing #{num_of_characters} characters."
>>>>>>> 9cbbf35270782ca9427001aa859909a32c8997d8
