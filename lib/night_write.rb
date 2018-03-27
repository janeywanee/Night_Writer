require './lib/night_writer'
ARGV[0]

lines_of_text = File.open('./lib/message.txt', 'r')
input = lines_of_text.read.delete("\n")
lines_of_text.close

lines_of_text.close
night_write = NightWriter.new(input)
night_write.to_braille
night_write.line_one
night_write.line_two
night_write.line_three
night_write.update_output

lines_of_text = File.new('./lib/braille.txt', 'w')
lines_of_text.puts(night_write.output)
lines_of_text.close
