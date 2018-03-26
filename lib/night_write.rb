<<<<<<< HEAD
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
=======
require 'pry'
require_relative 'dictionary'

class NightWriter

 attr_reader :dictionary

  def initialize
    @dictionary = {
                   "a" => ["0.","..",".."],
                   "b" => ["0.","0.",".."],
                   "c" => ["00","..",".."],
                   "d" => ["00",".0",".."],
                   "e" => ["0.",".0",".."],
                   "f" => ["00","0.",".."],
                   "g" => ["00","00",".."],
                   "h" => ["0.","00",".."],
                   "i" => [".0","0.",".."],
                   "j" => [".0","00",".."],
                   "k" => ["0.","..","0."],
                   "l" => ["0.","0.","0."],
                   "m" => ["00","..","0."],
                   "n" => ["00",".0","0."],
                   "o" => ["0.",".0","0."],
                   "p" => ["00","0.","0."],
                   "q" => ["00","00","0."],
                   "r" => ["0.","00","0."],
                   "s" => [".0","0.","0."],
                   "t" => [".0","00","0."],
                   "u" => ["0.","..","00"],
                   "v" => ["0.","0.","00"],
                   "w" => [".0","00",".0"],
                   "x" => ["00","..","00"],
                   "y" => ["00",".0","00"],
                   "z" => ["0.",".0","00"],
                   " " => ["..","..",".."]
                 }
  end

  def dictionary?
    true
  end

  def to_braille(letter)
    line = letter.split("")
    text_to_braille = line.map do |letter|
      @dictionary[letter]
    end
    text_to_braille
  end

  def to_format(letter)

    braille = to_braille(letter)
    line_1 = []
    line_2 = []
    line_3 = []
      if line_1.empty?
        line_1 << braille[0][0]
      elsif line_2.empty?
        line_2 << braille[0][1]
      elsif line_3.empty?
        line_3 << braille[0][2]
          binding.pry
      end
      line_1
      line_2
      line_3
  end



end
>>>>>>> 0db3c51bcc2790a59c9a777f1adf8b65d4212f71
