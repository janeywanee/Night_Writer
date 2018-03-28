require_relative 'dictionary'
require 'pry'

class NightRead
  attr_reader :braille,
              :dictionary

  def initialize(braille)
    @braille = braille
    @dictionary = Dictionary.new
  end

  def to_text
   braille_to_text = @dictionary.library.key(@braille)
  end

 #
 # def line_one
 #   line_1 = to_braille.inject([]) do |array, element|
 #     array << element[0]
 #   end.join
 # end
 #
 # def line_two
 #   line_2 = to_braille.inject([]) do |array, element|
 #     array << element[1]
 #   end.join
 # end
 #
 # def line_three
 #   line_3 = to_braille.inject([]) do |array, element|
 #     array << element[2]
 #   end.join
 # end
 #
 # def update_output
 #   @output << line_one + "\n" + line_two + "\n" + line_three + "\n"
 # end


end
