require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require './lib/dictionary'
require 'pry'

class TranslatorTest <MiniTest::Test

  def test_it_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_it_has_a_dictionary
    translator = Translator.new

    assert translator.dictionary?
  end

  def test_dictionary_is_a_hash
    translator = Translator.new

    assert_equal Hash, translator.class_check
    end

  def test_it_can_translate_a_letter_to_braille
    translator = Translator.new

    assert_equal ["0.","..",".."], translator.to_braille("a")
    # assert_equal ["0.","..",".."], translator.to_braille.join[:a]
  end


end
