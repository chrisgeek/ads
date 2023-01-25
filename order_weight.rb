# You are provided a string containing a list of positive integers separated by a space (" "). Take each value and calculate the sum of its digits, which we call its 
# "weight". Then return the list in ascending order by weight, as a string joined by spaces.
# For example 99 will have "weight" 18, 100 will have "weight" 1. In the output 100 will come before 99.
# Example:
# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: "100 180 90 56 65 74 68 86 99"

def order_weight(strng)
  return 'empty string' if strng.empty?

  split_arr = strng.split(' ')
  temp = []
  sums_hash = {}
  split_arr.each do |i|
    val = i.split('').map(&:to_i).sum
    sums_hash[i] = val
  end

  sorted = sums_hash.sort_by { |_, v| v }
  len = sorted.length - 1
  for i in 0...len
    if sorted[i][1] == sorted[i + 1][1] && (sorted[i] != nil || sorted[i + 1] != nil)
      first = split_arr.find_index(sorted[i][0])
      second = split_arr.find_index(sorted[i + 1][0])
      if second < first
        tem = sorted[i]
        sorted[i] = sorted[i + 1]
        sorted[i + 1] = tem
      end
    end
    temp << sorted[i][0]
  end

  temp << sorted.last[0]
  temp.join(' ')
end

val = '56 65 74 100 99 68 86 180 90'
order_weight("11 11 2000 10003 22 123 1234000 44444444 9999")

def order_weight_2(strng)
  split_arr = strng.split(' ')
  temp = []
  sums_hash = {}
  split_arr.each do |i|
    val = i.split('').map(&:to_i).sum
    sums_hash[i] = val
  end

  sums_hash.sort_by { |_, v| v }.each { |i| temp << i[0] }
  temp.join(' ')
end
