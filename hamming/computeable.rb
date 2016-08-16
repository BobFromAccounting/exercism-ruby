class Computeable
  attr_reader :base, :comparator
  attr_accessor :difference_array

  def initialize(base = '', comparator = '')
    @base = base.split("")
    @comparator = comparator.split("")
    @difference_array = []
    raise ArgumentError if base.length != comparator.length
  end

  def compute
    compute_diff.difference_array.count
  end

  private
    def compute_diff
      iterate_over_base.with_index { |bn, i| reduce_arrays(bn, comparator.at(i), i) }
      self
    end

    def iterate_over_base
      base.map
    end

    def reduce_arrays base_node, comparator_node, index
      @difference_array << { index: index, basenode: base_node,
                              comparatornode: comparator_node } if base_node != comparator_node
    end
end
