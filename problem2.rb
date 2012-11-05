class Problem2

  def initialize
    @sum = 2
    self.fibonacci(1,2)
  end

  def fibonacci(first, second)
    next_second = first + second
    sleep(1.0/50)
    unless next_second > 4000000
      puts next_second
      @sum = @sum + next_second if next_second.even?
      fibonacci(second, next_second)
    end
  end

  def print_sum
    puts "Sum: " + @sum.to_s
  end
end

p = Problem2.new
p.print_sum
