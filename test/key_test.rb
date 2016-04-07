gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/key.rb"

class KeyGeneratorTest < Minitest::Test

  def test_key_generator_exists
    key = KeyGenerator.new
    assert_equal KeyGenerator, key.class
  end

  def test_key_is_generated
    key = KeyGenerator.new
    assert key
  end

  def test_you_can_input_a_key
    key = KeyGenerator.new(17865)
    assert_equal 17865, key.key
  end
end
