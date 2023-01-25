def juggle_left_rotate(arr, n)
  temp_arr = arr.shift(n)
  arr + temp_arr
end
arr = [3, 4, 1, 2, 10, 7]
puts juggle_left_rotate(arr, 2)
