require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate_to_english'
require './lib/translate_to_braille'
require './lib/dictionary'
require 'pry'

class TranslateToEnglishTest < MiniTest::Test

  def test_it_exists
    translate_to_english = TranslateToEnglish.new("0.\n..\n..")
    assert_instance_of TranslateToEnglish, translate_to_english
  end

  def test_it_can_remove_newline_characters
    translate_to_english = TranslateToEnglish.new("0.\n..\n..")
    assert_equal ["0.", "..", ".."], translate_to_english.remove_new_line
  end

  def test_it_can_call_key_using_value
    translate_to_english = TranslateToEnglish.new(["0.", "..", ".."])
    assert_equal "a", translate_to_english.get_key
  end

end
