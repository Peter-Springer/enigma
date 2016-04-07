gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/encrypt.rb"

class EncryptTest < Minitest::Test


  def test_encrypt_exists
    e = Encrypt.new
    assert_equal Encrypt, e.class
  end

  def test_encrypt_method
    e = Encrypt.new
    result = e.char_map_index("m")
    assert_equal 12, result
  end

  def test_encrypt_method_can_handle_capital_letters
    e = Encrypt.new
    result = e.char_map_index("M")
    assert_equal 12, result
  end

  def test_basic_encrypt
    e = Encrypt.new
    result = e.encrypt_message("Hello")
    assert_equal "74111114", result
  end

  def test_basic_decrypt
    e = Encrypt.new
    result = e.decrypt_message("74111114")
    assert_equal "Hello", result
  end
end
