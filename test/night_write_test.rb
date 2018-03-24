require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require 'pry'

class TranslatorTest < Minitest::Test

  def test_it_exist
    translator = Translator.new
  end

  def test_can_encrypt_single_letter
    translator = Translator.new

    actual = "k"
    expected = translator.encrypt

    assert_equal expected, acutal
  end
end
