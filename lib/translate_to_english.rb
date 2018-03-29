require_relative 'dictionary'
require 'pry'

class TranslateToEnglish
  attr_reader :braille

  def initialize(braille)
    @braille = braille
    @dictionary = Dictionary.new
  end

  def remove_new_line
    line = @braille.split("\n")
  end

  def get_key
      @braille.map do |braille|
      @dictionary.library.key(@braille)
    end.join.squeeze
  end


  #
  # def to_english
  #   @braille.map do |braille|
  #     @dictionary.library[braille]

end
