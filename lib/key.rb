class KeyGenerator

  attr_accessor :key

  def initialize(key = nil)
    @key = key || rand(100000).to_s.rjust(5, "0")
  end
end
