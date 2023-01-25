# Return the mai difference between elements in an arraj arr[j] - arr[i], j > i

def max_diff_btw_elem(arr)
  i = 1
  j = 0
  diff = arr[i] - arr[j]
  while i < arr.length
    if (arr[i] - arr[j]) > diff
      diff = arr[i] - arr[j]
    end
    i += 1
    j += 1
  end
  diff
end
arr = [34, 8, 10, 3, 2, 80, 30, 33, 1]
puts max_diff_btw_elem(arr)
