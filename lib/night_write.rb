
require 'pry'
require_relative 'dictionary'

class NightWriter

 attr_reader :dictionary, :output

  def initialize(text)
    @dictionary = Dictionary.new
    @text = text
    @output = ""
  end

  def to_braille
    line = @text.split("")
    text_to_braille = line.map do |letter|
      @dictionary.library[letter]
    end
  end

  def line_one
    line_1 = to_braille.reduce([]) do |array, element|
      array << element[0]
    end.join
  end

  def line_two
    line_2 = to_braille.reduce([]) do |array, element|
      array << element[1]
    end.join
  end

  def line_three
    line_3 = to_braille.reduce([]) do |array, element|
      array << element[2]
    end.join

  end

  def update_output
    @output << line_one + "\n" + line_two + "\n" + line_three + "\n"
  end
end

  # def line_three(letter)
  #   line_three = []
  #   line_three << to_braille(letter)[0][2]
  #   line_three
  # end


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
