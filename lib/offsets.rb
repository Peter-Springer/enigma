require "./lib/key.rb"
require 'date'
# require "./lib/encrypt.rb"

class OffsetCalculator


  attr_reader :key, :date, :formatted_date

  def initialize(key = KeyGenerator.new.key, date = Time.now.strftime("%d%m%y").to_i)
    @key = key
    @date = date
    @formatted_date = (@date ** 2).to_s[-4..-1]
  end


  def a_rotation_plus_offset
    a = @key[0..1].to_i + @formatted_date[0].to_i
  end

  def b_rotation_plus_offset
    b = (@key[1..2].to_i + @formatted_date[1].to_i)
  end

  def c_rotation_plus_offset
    c = (@key[2..3].to_i + @formatted_date[2].to_i)
  end

  def d_rotation_plus_offset
    d = (@key[3..4].to_i + @formatted_date[3].to_i)
  end
end
