# this compares two values in an array to see if their difference equals a given number
# Time-complexity: O(nlogn),Auxiliary-space:O(1)

def compare_pair(arr, val) # subtraction
  left = 0
  right = arr.length - 1
  while left < right
    diff = arr[left] - arr[right]
    if diff.abs == val.abs
      return arr[left], arr[right]
    elsif diff.abs > val.abs
      right -= 1
    else
      left += 1
    end
  end
  -1
end

# puts compare_pair([5, 20, 3, 2, 50, 80], -78)

def compare_pair_sum(arr, val) # sum
  left = 0
  arr.sort!
  right = arr.length - 1
  while left < right
    diff = arr[left] + arr[right]
    if diff.abs == val.abs
      return arr[left], arr[right]
    elsif diff.abs > val.abs
      right -= 1
    else
      left += 1
    end
  end
  -1
end

# puts compare_pair_sum([5, 20, 3, 2, 50, 80], 70)
#
# Approach 2: Using hash maps
# Time-complexity: O(n), Auxiliary-space: O(n){for hash}

def check_pair(a,x)
  len = a.length
  map = {}
  for i in 0...len
    t = x.abs + a[i]  # if a - b = x then a = x + b
    s = a[i] - x.abs  # if a - b = x then b = x - a
    if map[t]
      return t, a[i]
    elsif map[s]
      return s, a[i]
    end

    map[a[i]] = 1
    end
  -1
end

puts check_pair([5, 20, 3, 2, 50, 80], 78)
