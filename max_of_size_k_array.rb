# Given an array and number K,Print the maximum value in each sub-arrays of size K

def max_of_subarray(arr, n)
  k = n
  len = arr.length - 1
  max_values = []
  temp_arr = []
  for i in 0...len
    for x in i...k
      temp_arr << arr[x]
    end
    k += 1 if k < arr.length
    max_values << temp_arr.max
    return max_values if i == arr.length - n

    temp_arr = []
  end
end
arr = [9, 1, 8, 2, 7, 3, 6, 4, 5, 15, 17]
puts max_of_subarray(arr, 4)
