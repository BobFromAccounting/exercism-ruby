require_relative "computeable"
class Hamming
  attr_reader :computeable
  def initialize(base, comparator)
    @computeable = Computeable.new(base, comparator)
  end

  def compute
    computeable.compute
  end
end
