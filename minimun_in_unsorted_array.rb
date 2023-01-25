# A sorted array is rotated at some unknown point, find the minimum element in it
# Time-complexity: O(n), Auxiliary-space:O(1)

def minimum_in_unsorted(arr)
  minimum = arr[0]
  index = 0
  len = arr.length - 1
  for i in 1...len
    if arr[i] < minimum
      minimum = arr[i]
      index = i
    end
  end
  puts "minimum = #{minimum}, index = #{index}"
end

minimum_in_unsorted([5, 5, 1, 6, 0, 1, 2, 3, 4])
