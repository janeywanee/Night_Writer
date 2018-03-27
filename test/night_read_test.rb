require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_read'
require './lib/dictionary'
require 'pry'

class NightReadTest < MiniTest::Test

  def test_it_exists
    night_read = NightRead.new(["0.","..",".."])
    assert_instance_of NightRead, night_read
  end

  def test_it_has_a_instance_of_the_dictionary
    night_read = NightRead.new(["0.","..",".."])
    dictionary = Dictionary.new
    assert_instance_of Dictionary, dictionary
  end

  def test_it_can_translate_a_single_letter_braille_to_text
    night_read = NightRead.new(["0.","..",".."])
    assert_equal "a", night_read.to_text
  end

  def test_it_can_translate_a_word_braille_to_text
    skip
    night_read = NightRead.new([["00","..",".."],["0.","..",".."],[".0","00","0."]])
    assert_equal "cat", night_read.to_text
  end


end
