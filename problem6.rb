class Problem6
  # Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
  def initialize
    difference
  end

  def difference
    natural = *(1..100)
    puts square_of_sum(natural) - sum_of_squares(natural)
  end

  def sum_of_squares(natural)
    natural.inject{|sum, x| sum = sum + x**2}
  end

  def square_of_sum(natural)
    sum = natural.inject(0, :+)
    sum**2
  end
end
Problem6.new
