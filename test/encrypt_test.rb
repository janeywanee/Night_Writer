require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'
require 'pry'

class EncryptTest <MiniTest::Test

  def test_it_exists
    encrypt = Encrypt.new
  end
