class Problem3
  def initialize
    number = 600851475143
    prime_factorization(number)
  end

  def prime_factorization(number)
    second = false
    i = 2

    while true
      if number % i == 0
        number = number / i
        puts number.to_s + " " + i.to_s
      elsif second
        i += 0
      else
        break
      end
    end
  end
end

p = Problem3.new
