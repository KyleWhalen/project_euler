class Problem7
  #I don't like how long this one takes.  There has to be a faster solution.
  #What is the 10 001st prime number?
  def initialize
    find_prime(10001)
  end

  def find_prime(number)
    numbers = *(2..200000)
    numbers.delete_if{|n| n.even? && n > 2} #iterates through whole array
    i = 1

    while numbers.count > 0 && i <= number
      numbers.delete_if{|n| (n > numbers.first && n % numbers.first == 0)} #iterates through rest of array
      puts i.to_s + ". " + numbers.first.to_s
      numbers.delete_at(0)
      i += 1
    end
  end
end
Problem7.new
