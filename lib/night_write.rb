
require 'pry'
require_relative 'dictionary'

class NightWrite

 attr_reader :dictionary

  def initialize(text)
    @dictionary = Dictionary.new
    @text = text
    # @output = ""
  end

  def capitalized_letters
    line = @text.split('')
    split_text = []
    line.each do |letter|
      if
        letter == letter.downcase
        split_text << letter
      elsif
        letter == letter.upcase
        split_text << "shift"
        split_text << letter.downcase
      end
    end
    split_text
  end

  def to_braille
    capitalized_letters.map do |letter|
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
     "#{line_one}\n#{line_two}\n#{line_three}"
  end
end
