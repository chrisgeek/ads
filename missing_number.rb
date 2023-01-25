# Given an array, find the value that is not in the sequence
def missing_num(arr)
  arr.sort!
  len = arr.length

  for i in (0...(len - 1))
    return arr[i] + 1 if arr[i + 1] - arr[i] != 1
  end
  -1
end

array = [1, 3, 5, 2, 4, 8, 6]
missing_num(array)
