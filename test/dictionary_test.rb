require 'minitest/autorun'
require 'minitest/pride'
require './lib/dictionary'
require 'pry'

class DictionaryTest < MiniTest::Test

  def test_it_exists
    dictionary = Dictionary.new

    assert_instance_of Dictionary, dictionary
  end

  def test_it_has_26_key_value_pairs
    dictionary = Dictionary.new

    assert_equal 26, dictionary.number_of_keys
  end
end
