# Given an array of integers, return consecutively repeating values.

def repeating_elem(arr)
  i = 0
  j = 1
  arr.sort!
  val = []
  while i < arr.length
    val << arr[i] if arr[i] == arr[j]
    i += 1
    j += 1
  end
  val
end
arr = [1, 4, 6, 4, 3, 6, 1, 1, 4, 4, 6]
puts repeating_elem(arr)

