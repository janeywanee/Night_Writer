require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require './lib/dictionary'
require 'pry'

class NightWriteTest < MiniTest::Test

  def test_it_exists
    night_write = NightWrite.new("a")
    assert_instance_of NightWrite, night_write
  end

  def test_that_it_has_a_instance_of_dictionary
    night_write = NightWrite.new("a")
    dictionary = Dictionary.new
    assert_instance_of Dictionary, dictionary
  end

  def test_it_can_translate_a_letter_to_braille
    night_write = NightWrite.new("a")
    assert_equal [["0.","..",".."]], night_write.to_braille
  end

  def test_it_can_translate_single_word_to_braille
    night_write = NightWrite.new("dog")
    assert_equal [["00",".0",".."], ["0.",".0","0."], ["00","00",".."]],
    night_write.to_braille
  end

  def test_it_can_tranlate_a_space
    night_write = NightWrite.new("a b")
    assert_equal [["0.","..",".."], ["..","..",".."], ["0.","0.",".."]], night_write.to_braille
  end

  def test_it_can_translate_traditional_punctuation
    night_write = NightWrite.new(".")
    assert_equal [["..","00",".0"]], night_write.to_braille
  end

  def test_it_can_produce_braille_format_line_one
    night_write = NightWrite.new("dog")
    assert_equal "000.00", night_write.line_one
  end

  def test_it_can_produce_braille_format_line_two
    night_write = NightWrite.new("dog")
    assert_equal ".0.000", night_write.line_two
  end

  def test_it_can_produce_braille_format_line_three
    night_write = NightWrite.new("dog")
     assert_equal "..0...", night_write.line_three

      # remove later
    # puts night_write.output
  end

  def test_it_can_translate_capital_letters
    night_write = NightWrite.new("Dog")
    assert_equal ["shift", "d", "o", "g"], night_write.capitalized_letters
  end

  def test_line_one_of_a_capital_letter_can_be_translated
    night_write = NightWrite.new("D")
    assert_equal "..00", night_write.line_one
  end

  def test_it_can_trnslate_one_whole_capital_letter
    night_write = NightWrite.new("D")
    assert_equal "..00\n...0\n.0..", night_write.update_output
  end

  def test_it_can_translate_a_word_with_a_capital
    night_write = NightWrite.new("Dog")
    assert_equal "..000.00\n...0.000\n.0..0...", night_write.update_output
  end

  def test_it_can_support_character_limit
    night_write = NightWrite.new("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    line_one = night_write.line_one
    line_two = night_write.line_two
    line_three = night_write.line_three

    assert_equal  "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.\n0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.", night_write.character_limit(line_one)

    assert_equal "................................................................................\n..........................................................................................", night_write.character_limit(line_two)

    assert_equal "................................................................................\n..........................................................................................", night_write.character_limit(line_three)

  end

end
