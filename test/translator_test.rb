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
    assert_equal [[["0."],[".."],[".."]]], translator.to_braille("a")
  end

  def test_it_can_translate_single_word_to_braille
    translator = Translator.new
    assert_equal [[["00"],[".0"],[".."]], [["0."],[".0"],["0."]], [["00"],["00"],[".."]]], translator.to_braille("dog")
  end

  def test_it_can_tranlate_a_space
    translator = Translator.new
      assert_equal [[[".0"],["0."],[".."]],[[".."],[".."],[".."]],[["0."],[".."],[".."]],[["00"],[".."],["0."]]], translator.to_braille("i am")
  end
end

#
#   # def test_it_can_produce_three_lines_output_for_every_one_line_input
#   #   skip
#   #   translator = Translator.new
#   #   actual = translator.bra_format("a")
#   #   expected = [
#   #             "0.",
#   #             "..",
#   #             ".."
#   #                   ]
#   #
#   #   assert_equal expected, actual
#   # end
#
# # need to figure out how to get array into braille format 2x3
#