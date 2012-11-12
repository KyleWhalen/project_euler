class Problem4

  def initialize
    find_largest_palendrome
  end

  def find_largest_palendrome
    start = Time.now
    get_out = false
    999.step(100, -1) do |i|
      999.step(100, -1) do |j|
        if palindrome(i*j)
          puts i*j
          puts "Time: " + (Time.now - start).to_s
          get_out = true
          break
        end
      end
      break if get_out
    end
  end

  def palindrome(number)
    number.to_s.reverse == number.to_s ? true : false
  end
end

p = Problem4.new
