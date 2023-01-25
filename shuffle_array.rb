# return a shuffled array
# knuth/fisher-yates algorithm

def shuffle_arr(arr)
  n = arr.length
  for i in (n - 1).downto(1) do
    j = Random.rand(i + 1)
    v = i
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp
  end
  arr
end

def shuffle_arr_2(arr)
  n = arr.length
  i = n - 1
  while i > 1
    j = Random.rand(i + 1)
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp

    i -= 1
  end
  arr
end

arr = [1, 2, 3, 4, 5, 6]
puts shuffle_arr_2(arr)
