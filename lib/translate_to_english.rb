require_relative 'dictionary'
require 'pry'

class TranslateToEnglish
  attr_reader :dictionary

  def initialize(braille)
    @braille = []
    @dictionary = dictionary
  end
end
