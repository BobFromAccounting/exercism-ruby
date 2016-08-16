class Squares
  attr_reader :square_of_sum, :sum_of_squares

  def initialize(n)
    @square_of_sum  = compute_square_of_sum(n)
    @sum_of_squares = compute_sum_of_squares(n)
  end

  def compute_square_of_sum(num)
    sum_to_num(num)**2
  end

  def sum_to_num(num)
    result = 0
    (1..num).each do |i|
       result += i
    end
    result
  end
end
