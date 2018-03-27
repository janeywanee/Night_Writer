
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
  end

  def line_one(letter)
    line_one = []
    line_one << to_braille(letter)[0][0]
    line_one
  end

  def line_two(letter)
    line_two = []
    line_two << to_braille(letter)[0][1]
    line_two
  end

  def line_three(letter)
    line_three = []
    line_three << to_braille(letter)[0][2]
    line_three
  end


  # def to_format(letter)
  #   braille = to_braille(letter).flatten
  #   line_1 = []
  #   line_2 = []
  #   line_3 = []
  #   braille.each_with_index do |string, index|
  #     if index == 0
  #       line_1 << string
  #       line_1 << "\n"
  #       line_1.join
  #     elsif index == 1
  #       line_2 << string
  #       line_2 << "\n"
  #       line_2.join
  #     else index == 2
  #       line_3 << string
  #       line_3 << "\n"
  #       line_3.join
  #     end
  #   end
  #   array = []

  # end
end
