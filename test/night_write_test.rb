require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require './lib/dictionary'
require 'pry'

class NightWriterTest < MiniTest::Test

  def test_it_exists
    night_write = NightWriter.new("a")
    assert_instance_of NightWriter, night_write
  end

  def test_that_it_has_a_instance_of_dictionary
    night_write = NightWriter.new("a")
    dictionary = Dictionary.new
    assert_instance_of Dictionary, dictionary
  end

  def test_it_can_translate_a_letter_to_braille
    night_write = NightWriter.new("a")
    assert_equal [["0.","..",".."]], night_write.to_braille
  end

  def test_it_can_translate_single_word_to_braille
    night_write = NightWriter.new("dog")
    assert_equal [["00",".0",".."], ["0.",".0","0."], ["00","00",".."]],
    night_write.to_braille
  end

  def test_it_can_tranlate_a_space
    night_write = NightWriter.new("a b")
    assert_equal [["0.","..",".."], ["..","..",".."], ["0.","0.",".."]], night_write.to_braille
  end

  def test_it_can_translate_traditional_punctuation
    night_write = NightWriter.new(".")
    assert_equal [["..","00",".0"]], night_write.to_braille
  end

  def test_it_can_produce_braille_format_line_one
    night_write = NightWriter.new("dog")
    assert_equal "000.00", night_write.line_one
  end

  def test_it_can_produce_braille_format_line_two
    night_write = NightWriter.new("dog")
    assert_equal ".0.000", night_write.line_two
  end

  def test_it_can_produce_braille_format_line_three
    night_write = NightWriter.new("dog")
     assert_equal "..0...", night_write.line_three
    night_write.to_braille
    night_write.line_one
    night_write.line_two
    night_write.line_three
    night_write.update_output
      # remove later
    puts night_write.output
  end
end
