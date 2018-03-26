require_relative './translator'

class NightWriter
end

lines_of_text = File.open(ARGV[0], r)
to_translate = File.read.(lines)



# require_relative "./enigma.rb"
# require "date"
#
#
# text = File.open(ARGV[0], "r")
#
# enigma = Enigma.new
#
# encryption_file = File.open(ARGV[1], "w")
# encryption_file.write(enigma.encrypt(message))
# encryption_file.close
#
# puts "Created 'encrypted.txt' with the key #{enigma.offset.key} and #{Date.today}"












# handle = File.open(ARGV[0], "r")
#
# incoming_message = handle.read
#
# handle.close
#
# braille_text = incoming_message.upcase
#
# writer = File.open(ARGV[1], "w")
#
# writer.write(braille_text)
#
# writer.close
