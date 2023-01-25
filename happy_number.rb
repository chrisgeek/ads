# A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, 
# and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. 
# Those numbers for which this process ends in 1 are happy numbers.
# Return True if n is a happy number, and False if not.

def happy_number(num)
  split_num = num.to_s.split('')
  sum = split_num.map(&:to_i).map { |i| i**2 }.sum
  if sum == 1
    true
  elsif sum > 1 && sum <= 4
    false
  else
    happy_number(sum)
  end
end

puts happy_number(39)
