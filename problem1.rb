class Problem1
  array = *(1..1000)
  answer = array.inject{|sum,x| x % 3 == 0 || x % 5 == 0 ? sum + x : sum}
  puts answer.to_s
end
