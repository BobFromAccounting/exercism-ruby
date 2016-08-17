class Squares
  attr_reader :square_of_sum, :sum_of_squares, :difference

  def initialize(n)
    @square_of_sum  = compute_square_of_sum(n)
    @sum_of_squares = compute_sum_of_squares(n)
    @difference     = square_of_sum - sum_of_squarescd
  end

  def compute_square_of_sum(num)
    sum_to_num(num)**2
  end

  def compute_sum_of_squares(num)
    result = 0
    (1..num).each do |i|
      result += square_num(i)
    end
    result
  end

  def square_num(num)
    num**2
  end
  def sum_to_num(num)
    result = 0
    (1..num).each do |i|
       result += i
    end
    result
  end
end
