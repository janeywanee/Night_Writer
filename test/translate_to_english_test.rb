require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate_to_english'
require './lib/translate_to_braille'
require './lib/dictionary'
require 'pry'

class TranslateToEnglishTest < MiniTest::Test

  def test_it_exists
    translate_to_english = TranslateToEnglish.new(["0.","..",".."])
    assert_instance_of TranslateToEnglish, translate_to_english
  end

  def test_it_is_braille
    translate_to_english = TranslateToEnglish.new(["0.","..",".."])
    assert_equal "a", translate_to_english.braille
  end


end
 
