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
    x = to_braille(letter)
    line_1 = ""
    if line_1.empty?
      line_1 << x[0][0]
    end
      line_1
  end
end
