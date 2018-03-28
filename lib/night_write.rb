
require 'pry'
require_relative 'dictionary'

class NightWrite

 attr_reader :dictionary, :output

  def initialize(text)
    @dictionary = Dictionary.new
    @text = text
    @output = ""
  end

  # def capitalized_letters
  #   if @text == @text.capitalize
  #
  #     binding.pry
  #   end
  # end

  def to_braille
    line = @text.split("")
    text_to_braille = line.map do |letter|
      @dictionary.library[letter]
    end
  end

  def line_one
    line_1 = to_braille.inject([]) do |array, element|
      array << element[0]
    end.join
  end

  def line_two
    line_2 = to_braille.inject([]) do |array, element|
      array << element[1]
    end.join
  end

  def line_three
    line_3 = to_braille.inject([]) do |array, element|
      array << element[2]
    end.join
  end

  def update_output
    @output << line_one + "\n" + line_two + "\n" + line_three + "\n"
  end
end
