require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require './lib/dictionary'
require 'pry'

class NightWriterTest < MiniTest::Test

  def test_it_exists
    night_write = NightWriter.new
    assert_instance_of NightWriter, night_write
  end

  def test_instance_of_dictionary
    dictionary = Dictionary.new
    assert_instance_of Dictionary, dictionary
  end

  def test_access_to_dictionary
    night_write = NightWriter.new
    assert night_write.dictionary?
  end

  def test_it_can_translate_a_letter_to_braille
    night_write = NightWriter.new
    assert_equal [["0.","..",".."]], night_write.to_braille("a")
  end

  def test_it_can_translate_single_word_to_braille
    night_write = NightWriter.new
    assert_equal [["00",".0",".."], ["0.",".0","0."], ["00","00",".."]],
    night_write.to_braille("dog")
  end

  def test_it_can_tranlate_a_space
    night_write = NightWriter.new
      assert_equal [[".0","0.",".."],["..","..",".."],["0.","..",".."],["00","..","0."]], night_write.to_braille("i am")
  end

    def test_it_can_produce_braille_format_line_one
      night_write = NightWriter.new
      assert_equal "0.", night_write.to_format("a")
    end

    def test_it_can_produce_three_lines_for_single_letter
      night_write = NightWriter.new
      assert_equal "\n0.""\n..""\n..", night_write.to_format("a")
    end
end
