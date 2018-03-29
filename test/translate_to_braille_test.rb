require 'minitest/autorun'
require 'minitest/pride'
require './lib/translate_to_braille'
require './lib/dictionary'
require 'pry'

class TranslateToBrailleTest < MiniTest::Test

  def test_it_exists
    translate_to_braille = TranslateToBraille.new("a")
    assert_instance_of TranslateToBraille, translate_to_braille
  end

  def test_that_it_has_a_instance_of_dictionary
    translate_to_braille = TranslateToBraille.new("a")
    dictionary = Dictionary.new
    assert_instance_of Dictionary, dictionary
  end

  def test_it_can_translate_a_letter_to_braille
    translate_to_braille = TranslateToBraille.new("a")
    assert_equal [["0.","..",".."]], translate_to_braille.to_braille
  end

  def test_it_can_translate_single_word_to_braille
    translate_to_braille = TranslateToBraille.new("dog")
    assert_equal [["00",".0",".."], ["0.",".0","0."], ["00","00",".."]],
    translate_to_braille.to_braille
  end

  def test_it_can_tranlate_a_space
    translate_to_braille = TranslateToBraille.new("a b")
    assert_equal [["0.","..",".."], ["..","..",".."], ["0.","0.",".."]], translate_to_braille.to_braille
  end

  def test_it_can_translate_traditional_punctuation
    translate_to_braille = TranslateToBraille.new(".")
    assert_equal [["..","00",".0"]], translate_to_braille.to_braille
  end

  def test_it_can_produce_braille_format_line_one
    translate_to_braille = TranslateToBraille.new("dog")
    assert_equal "000.00", translate_to_braille.line_one
  end

  def test_it_can_produce_braille_format_line_two
    translate_to_braille = TranslateToBraille.new("dog")
    assert_equal ".0.000", translate_to_braille.line_two
  end

  def test_it_can_produce_braille_format_line_three
    translate_to_braille = TranslateToBraille.new("dog")
     assert_equal "..0...", translate_to_braille.line_three
  end

  def test_it_can_translate_capital_letters
    translate_to_braille = TranslateToBraille.new("Dog")
    assert_equal ["shift", "d", "o", "g"], translate_to_braille.capitalized_letters
  end

  def test_line_one_of_a_capital_letter_can_be_translated
    translate_to_braille = TranslateToBraille.new("D")
    assert_equal "..00", translate_to_braille.line_one
  end

  def test_it_can_trnslate_one_whole_capital_letter
    translate_to_braille = TranslateToBraille.new("D")
    assert_equal "..00\n...0\n.0..", translate_to_braille.update_output
  end

  def test_it_can_translate_a_word_with_a_capital
    translate_to_braille = TranslateToBraille.new("Dog")
    assert_equal "..000.00\n...0.000\n.0..0...", translate_to_braille.update_output
  end

  def test_it_can_support_character_limit
    translate_to_braille = TranslateToBraille.new("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    line_one = translate_to_braille.line_one
    line_two = translate_to_braille.line_two
    line_three = translate_to_braille.line_three

    assert_equal  "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.\n0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.", translate_to_braille.character_limit(line_one)

    assert_equal "................................................................................\n..........................................................................................", translate_to_braille.character_limit(line_two)

    assert_equal "................................................................................\n..........................................................................................", translate_to_braille.character_limit(line_three)

  end

end
