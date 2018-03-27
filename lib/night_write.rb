require './lib/night_writer'
ARGV[0]
f = File.open('./lib/message.txt', 'r')
input = f.read.delete("\n")
f.close

f.close
night_write = NightWriter.new(input)
night_write.to_braille
night_write.line_one
night_write.line_two
night_write.line_three
night_write.update_output

f = File.new('./lib/braille.txt', 'w')
f.puts(night_write.output)
f.close
