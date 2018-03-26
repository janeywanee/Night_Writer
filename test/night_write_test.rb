require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'
require 'pry'

class NightWriter < Minitest::Test

  def test_it_exists
    night_write = NightWriter.new

    assert night_write.filereader
  end

  def test_it_can_create_an_instance_translator
    night_write = NightWriter.new

    assert_instance_of Translator, Translator.new
  end
end
