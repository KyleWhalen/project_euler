class Problem4

  def initialize
    find_largest_palendrome
  end

  def find_largest_palendrome
    start = Time.now
    get_out = false
    bottom = 100
    temp_largest = 0

    999.step(bottom, -1) do |i|
      999.step(bottom, -1) do |j|
        product = i*j
        if palindrome(product)
          if product > temp_largest
            temp_largest = product
            bottom = i<j ? i : j
          else
            get_out = true
          end
          break
        end
      end
      break if get_out
    end
    puts "Time: " + (Time.now - start).to_s
    puts temp_largest.to_s
  end

  def palindrome(number)
    number.to_s.reverse == number.to_s ? true : false
  end
end

p = Problem4.new
