require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require 'pry'

class TranslatorTest < Minitest::Test

  def test_it_exist
    translator = Translator.new
  end
end
