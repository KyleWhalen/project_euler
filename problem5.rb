class Problem5
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
  def initialize
    find_number
  end

  def find_number
    i = 40
    found = false
    while !found
      found = true
      for j in 1..20
        if i % j != 0
          found = false
          i += 20
          break
        end
      end
    end
    puts i.to_s
  end
end

Problem5.new
