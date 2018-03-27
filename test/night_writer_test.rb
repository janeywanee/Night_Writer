require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'
require './lib/dictionary'
require 'pry'

class NightWriterTest < MiniTest::Test

  def test_it_exists
    night_write = NightWriter.new("a")
    assert_instance_of NightWriter, night_write

  end

  def test_access_to_dictionary
    night_write = NightWriter.new("a")
    assert night_write.dictionary?
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
    night_write = NightWriter.new("i am")
    result = [[".0","0.",".."],["..","..",".."],["0.","..",".."],["00","..","0."]]
      assert_equal result, night_write.to_braille
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



  #
  # def test_it_can_produce_braille_format_line_two
  #   night_write = NightWriter.new
  #   assert_equal [".."], night_write.line_two("a")
  # end
  #
  # def test_it_can_produce_braille_format_line_three
  #   night_write = NightWriter.new
  #   assert_equal [".."], night_write.line_three("a")
  # end
  #
  # def test_it_can_format_a_words_letters_into
  #   night_write = NightWriter.new
  #
  #   assert_equal ["00", "0.", "00"] night_write.
  # end

  # def test_it_can_produce_three_lines_for_single_letter
  #   night_write = NightWriter.new
  #   assert_equal "0.\n""..\n""..\n", night_write.to_format("a")
  # end
