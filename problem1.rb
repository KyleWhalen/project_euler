class Problem1
  # Find the sum of all the multiples of 3 or 5 below 1000.

  array = *(1..1000)
  answer = array.inject{|sum,x| x % 3 == 0 || x % 5 == 0 ? sum + x : sum}
  puts answer.to_s
end
