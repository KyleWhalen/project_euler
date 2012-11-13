class Problem3
  #What is the largest prime factor of the number 600851475143 ?

  def initialize
    number = 600851475143
    prime_factorization(number)
  end

  def prime_factorization(number)
    start = Time.now
    for i in 2..(number/2).to_i
      if number % i == 0
        number = number / i
        puts number.to_s + " " + i.to_s
      elsif number == 1
        break
      end
    end
    puts "Time: " + (Time.now - start).to_s
  end
end

p = Problem3.new
