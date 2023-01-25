# Given a sorted array and a value x, Find Ceil(ceiling of x is the smallest element in array greater than or equal to x)
# and Floor(the greatest element smaller than or equal to x) of x.

def find_floor(arr, val)
  # arr.sort! add this line to find_floor_and_ceil emthod instead
  i = arr.count - 1
  while i >= 1
    return arr[i] if arr[i] <= val

    i -= 1
  end
  -1
end

def find_ceil(arr, val)
  # arr.sort! add this line to find_floor_and_ceil emthod instead
  arr.each do |i|
    return i if i >= val
  end
  -1
end

def find_floor_and_ceil(arr, val)
  arr.sort!
  floor = find_floor(arr, val)
  ceil = find_ceil(arr, val)
  "floor = #{floor}, ceil = #{ceil}"
end
arr = [1, 2, 8, 10, 10, 12, 19]
puts find_floor_and_ceil(arr, 19)
