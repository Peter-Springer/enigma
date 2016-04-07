gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require "./lib/offsets.rb"

class OffsetCalculatorTest < Minitest::Test

  def test_Offset_Calculator_exists
    offset = OffsetCalculator.new
    assert_equal OffsetCalculator, offset.class
  end

  def test_OffsetCalculator_has_key
    offset = OffsetCalculator.new
    assert offset.key
  end

  def test_OffsetCalculator_holds_key
    offset = OffsetCalculator.new(12345)
    assert_equal 12345, offset.key
  end

  def test_OffsetCalculator_has_date
    offset = OffsetCalculator.new
    assert offset.date
  end

  def test_OffsetCalculator_has_date
    offset = OffsetCalculator.new
    assert offset.a_rotation_plus_offset
  end

  def test_OffsetCalculator_rotator_calculation
    offset = OffsetCalculator.new
    offset.a_rotation_plus_offset == Fixnum
  end
end
